# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.hostmanager.enabled = true
  config.hostmanager.ignore_private_ip = true
  config.hostmanager.include_offline = true


  config.vm.hostname = 'foreman.box'
  config.vm.box = "centos-6.x-64bit-puppet.3.x"
  config.vm.box_url = "http://packages.vstone.eu/vagrant-boxes/centos-6.x-64bit-latest.box"

  config.vm.network "forwarded_port", guest: 80, host: 4080

  config.ssh.forward_agent = true

  config.vm.provider "virtualbox" do |vb|
     vb.name = 'foreman'
     vb.customize ["modifyvm", :id, "--memory", "2048"]
  end
  
  
  config.vm.provision "puppet" do |puppet|
    puppet.manifest_file = 'default.pp'
    puppet.module_path = 'modules'
  end
end
