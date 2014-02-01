#Puppet configuration to be served from the master

include epel

node "dev.tobyjackson.net" {
  notice("Reticulating Splines...")
  
  $enhancers = [ "telnet", "nano", "curl", "wget" ]
  package { $enhancers: ensure => "installed" }


  exec { "install_rvm":
	command => "curl -sSL https://get.rvm.io | bash -s stable && sudo chmod -R a+xwr /usr/local/rvm"
	, path    => "/usr/local/bin:/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/sbin:/home/vagrant/bin"
    , require => Package['curl']
  }
}