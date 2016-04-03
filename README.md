# docker-multichain

This is the repository for the kunstmaan/bigchaindb docker image.

## Important!

* Latest version in PIP does not build until this PR is merged and released: https://github.com/bigchaindb/bigchaindb/pull/162
* Latest development version uses a fork with that same PR applied

## Images

* [kunstmaan/bigchaindb:latest](https://hub.docker.com/r/kunstmaan/bigchaindb/): An Alpine Linux with the latest stable Bigchain deamon installed
* [kunstmaan/bigchaindb:develop](https://hub.docker.com/r/kunstmaan/bigchaindb/): An Alpine Linux with the latest development version of the Bigchain deamon installed

## Running via docker-compose

Use this [docker-compose.yml](https://github.com/Kunstmaan/docker-bigchaindb/blob/master/docker-compose.yml) and run:

```
sudo docker-compose up
```
