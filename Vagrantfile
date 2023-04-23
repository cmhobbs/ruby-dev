# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/jammy64"
  
  config.vm.provider "virtualbox" do |vb|
    #vb.gui    = true
    vb.memory = "2048"
    vb.cpus   = 2
  end

  config.vm.provision "shell", inline: <<-SHELL
    # install useful packages
    apt-get update
    apt install byobu curl git autoconf bison patch build-essential rustc libssl-dev libyaml-dev libreadline6-dev zlib1g-dev libgmp-dev libncurses5-dev libffi-dev libgdbm6 libgdbm-dev libdb-dev uuid-dev -y

    # copy user config and create various files for asdf
    cp -R /vagrant/vm-conf/asdf /home/vagrant/.asdf
    cp /vagrant/vm-conf/profile /home/vagrant/.profile
    cp /vagrant/vm-conf/bashrc  /home/vagrant/.bashrc
    cp /vagrant/vm-conf/default-gems /home/vagrant/.default-gems
    mkdir /home/vagrant/bin/
    cp /vagrant/vm-conf/bin/install-ruby.sh /home/vagrant/bin/install-ruby.sh
    chown -R vagrant:vagrant /home/vagrant/
  SHELL

  $msg = <<-MSG
  Connect to your VM with `vagrant ssh`.

  If this is the first time you're starting this VM, please run
  `install-ruby.sh` after connecting because I was too lazy to sort out
  the priviledged option for config.vm.provision.
  MSG

  config.vm.post_up_message = $msg
end
