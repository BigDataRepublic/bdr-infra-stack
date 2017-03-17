# BigData Republic's Data Science Hub


## Production deployment

You can define a custom inventory and use the desired components. See the [example-inventory](example-inventory/) and [provision.yml](provision.yml) for examples.

## Development 
For development and testing purposes Vagrant is used to configure the VM + networking.

### Prerequisites

* VirtualBox (VMware shared folder to host is not supported!)
* Vagrant 


### Usage


In order to enable shared folders with the host that are bidirectionally synced, virtualbox guest additions should stay up to date (only run this once):
```
vagrant plugin install vagrant-vbguest
```

To start the box:
```
vagrant up
```

To suspend the box:

```
vagrant suspend
```

To uninstall the box:

```
vagrant destroy
```

After fully provisioned the JupyterHub should be available at http://10.0.0.43

