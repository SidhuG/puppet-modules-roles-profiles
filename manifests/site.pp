
node default {
	include role::default
}

node 'puppet.example' {
	$role="puppetmaster"
        $location="DC1"
	include role::www
}
