#!/usr/bin/env bash
# sets up the vagrant box, working around failing guest additions cuasing failed mapped folders
vagrant plugin install vagrant-vbguest && \
vagrant up && \
vagrant provision --provision-with shell  && \
vagrant reload  && \
vagrant provision --provision-with ansible_local