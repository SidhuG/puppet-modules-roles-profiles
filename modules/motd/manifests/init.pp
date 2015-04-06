# Class: motd
#
# This module manages the /etc/motd file using a template
#
# Parameters:
#
# Actions:
#
# Requires:
#
# Sample Usage:
#  include motd
#
# [Remember: No empty lines between comments and class definition]
class motd (
  $template    = undef,
) {

    file { '/etc/motd':
      ensure  => file,
      backup  => false,
      content => inline_template($template),
    }

}
