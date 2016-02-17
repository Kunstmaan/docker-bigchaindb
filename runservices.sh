#!/bin/bash -x

service rethinkdb restart

bigchaindb -y start
