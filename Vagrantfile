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

  require 'rbconfig'
  is_windows = (RbConfig::CONFIG['host_os'] =~ /mswin|mingw|cygwin/)
  if is_windows
    # Provisioning configuration for shell script.
    config.vm.provision "shell" do |sh|
      sh.path = "provision/windows.sh"
      sh.args = "provision/playbook.yml"
      sh.privileged = false
    end
  else
    config.vm.provision "ansible", playbook: "provision/playbook.yml"
  end

end