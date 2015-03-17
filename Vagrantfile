# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/trusty64"
  config.vm.network "forwarded_port", guest: 3000, host: 3000

  config.vm.provision "shell", inline: <<-SHELL

    # RVM
    gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
    curl -sSL https://get.rvm.io | bash -s stable
    source /usr/local/rvm/scripts/rvm
    sudo chown -R vagrant /usr/local/rvm

    # Ruby
    rvm use 2.2.0 --install --default

    # Rails
    gem install rails --no-ri --no-rdoc

    # Postgres
    sudo -u postgres createuser -s vagrant
    sudo apt-get install postgresql libpq-dev --yes

  SHELL
end
