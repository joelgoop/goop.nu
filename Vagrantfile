# -*- mode: ruby -*-
# vi: set ft=ruby :
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.provider "virtualbox" do |v|
    v.memory = 1024
  end
  config.vm.box = "ubuntu/trusty32"
  config.vm.network "forwarded_port", guest: 4000, host: 8080

  config.vm.synced_folder "src/", "/home/vagrant/src/"

  config.vm.provision "ansible", playbook: "playbook.yml"
end