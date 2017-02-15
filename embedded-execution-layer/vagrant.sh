#!/bin/bash

# Copy the insecure (publicly known and default) vagrant private key https://github.com/mitchellh/vagrant/tree/master/keys
# We use this key so we do not need to put a custom key authorization for docker3's key in docker1 and docker2.
cp /vagrant/embedded-execution-layer/vagrant_private_key /home/vagrant/.ssh/id_rsa
chmod 0400 /home/vagrant/.ssh/id_rsa
chown vagrant:vagrant /home/vagrant/.ssh/id_rsa
