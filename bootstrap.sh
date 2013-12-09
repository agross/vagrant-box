#!/usr/bin/env bash

echo Provisioning...
date > /etc/vagrant-provisioned-at

apt-get update
apt-get install -y git
apt-get install -y apache2
apt-get install -y php5
apt-get install -y libapache2-mod-php5
/etc/init.d/apache2 restart

rm -rf /var/www
ln -fs /vagrant/src /var/www
