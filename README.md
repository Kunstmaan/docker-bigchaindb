# docker-bigchaindb

This is the repository for the scorpiovn/bigchaindb docker image.

## Important!

* Latest version in PIP does not build until a new version with this PR is released: https://github.com/bigchaindb/bigchaindb/pull/162

## Images

* [kunstmaan/bigchaindb:latest](https://hub.docker.com/r/kunstmaan/bigchaindb/): An Alpine Linux with the latest stable Bigchain deamon installed
* [kunstmaan/bigchaindb:develop](https://hub.docker.com/r/kunstmaan/bigchaindb/): An Alpine Linux with the latest development version of the Bigchain deamon installed

## Running via docker-compose

Use this [docker-compose.yml](https://github.com/scorpiovn/docker-bigchaindb/blob/master/docker-compose.yml) and run:

```
sudo docker-compose up
```

## Test

```
docker exec -t -i [containerNameOrId] /bin/sh
```

```
$> python3
>>> from bigchaindb.core import Bigchain
>>> bigchain = Bigchain()
>>> print(bigchain.host)
localhost
>>> print(bigchain.me)
<print the public key of the instance>
```
