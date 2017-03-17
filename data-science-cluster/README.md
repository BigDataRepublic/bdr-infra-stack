# BigData Republic's Data Science Cluster

The Data Science Cluster can run in the cloud, for example aws, or in a local virtual box.

## Cloud cluster


## Local dev cluster

To not depend on a cloud environment during development / experimenting, this directory contanis a vagrant box with common services.
Included are:
  * Zookeeper
  * Kafka
  * Spark

## Prerequisites

* VirtualBox (VMware shared folder to host is not supported!)
* Vagrant 


## Usage


In order to enable shared folders with the host that are bidirectionally synced, and to be able to provision with ansible, virtualbox guest additions should stay up to date (only run this once):
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

After fully provisioned you should have the following services running:
  * Spark 2.0.1 master at [10.0.0.44:7077](spark://10.0.0.44:7077)
  * Spark webui at [10.0.0.44:8080](http://10.0.0.44:8080)
  * Kafka 0.10 at [10.0.0.44:9092](10.0.0.44:9092)
  * Zookeeper [10.0.0.44:2181](10.0.0.44:2181)

As an example how to also create topics during vagrant provision, one topic `test` has been created.

## Note for Windows Users
Don't use spaces in either directories or filenames. This will cause an error when referencing those files.
