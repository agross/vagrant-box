#!/usr/bin/env bash

echo Provisioning...
date > /etc/vagrant-provisioned-at

apt-get update
apt-get install -y apache2
rm -rf /var/www
ln -fs /vagrant/src /var/www
