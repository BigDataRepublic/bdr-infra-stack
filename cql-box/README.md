# CQL box

Here we provide an easy setup of a small 3 node cassandra cluster on a centos/7 box using vagrant and ansible.

With the currently used centos/7 base box, we faced some issues with the installation of the guest additions on it.
This failed, such that the ansible directory could not be mounted in the guest os, such that we couldn't provision the box using ansible.

We've worked around it using a simple `yum update`, but it does require multiple `vagrant provision` and a `vagrant reload` call.

TLDR;
To get a centos box with a 3 node cassandra cluster on it, just run

```bash
./vagrant_start.sh
```