# BigData Republic's Embedded Execution Layer


# Remotely deploying to the swarm (vagrant)
1. Retrieve the required certificates and private keys to authenticate your client to the docker endpoint. For vagrant:
```
vagrant ssh bdr-container-node-1
sudo su -
cp /opt/ssl/ca.crt /vagrant/
cp /opt/ssl/client.* /vagrant/
```

2. You can now run any docker command from your host.
```
docker --tlsverify --tlscacert=ca.crt --tlscert=client.crt --tlskey=client.pem -H <address e.g. 10.0.0.45>:2376 version
docker --tlsverify --tlscacert=ca.crt --tlscert=client.crt --tlskey=client.pem -H <address e.g. 10.0.0.45>:2376 build -t ...
```

3. If you want to deploy a service on all nodes use the docker registry provided by tagging your docker image as ``10.0.0.45:4000/name``. E.g.:
```
docker --tlsverify --tlscacert=ca.crt --tlscert=client.crt --tlskey=client.pem -H <address e.g. 10.0.0.45>:2376 tag <image id (docker images)> 10.0.0.45:4000/name
docker --tlsverify --tlscacert=ca.crt --tlscert=client.crt --tlskey=client.pem -H <address e.g. 10.0.0.45>:2376 push 10.0.0.45:4000/name
```
The image is now available on all vagrant hosts (required for deploying a docker swarm mode service).

