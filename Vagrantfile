# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  
  # The standard provisioner used for all machines
  config.vm.provision :puppet do |puppet|
    puppet.manifests_path = "manifests"
	puppet.module_path = "modules"
    puppet.manifest_file  = "site.pp"
    puppet.options = [ "--pluginsync" ] 
  end
   
 
  config.vm.define "dev" do |dev|
	dev.vm.box="centos-6.4"
	dev.vm.hostname = "dev.tobyjackson.net"
    dev.vm.network "private_network", ip: "192.168.50.2"
  end
   

end
