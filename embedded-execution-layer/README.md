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
docker --tlsverify --tlscacert=ca.crt --tlscert=client.crt --tlskey=client.pem -H <address e.g. 10.0.0.45>:2376
```

