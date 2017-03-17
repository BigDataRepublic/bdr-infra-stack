#!/bin/bash -eux

# Remove Ansible and its dependencies.
yum -y remove ansible

# Remove all unused packages.
yum -y autoremove && yum clean all

# Clean up tmp.
rm -rf /tmp/*

# Zero out the rest of the free space using dd, then delete the written file.
dd if=/dev/zero of=/EMPTY bs=1M
rm -f /EMPTY

# Add `sync` so Packer doesn't quit too early, before the large file is deleted.
sync
