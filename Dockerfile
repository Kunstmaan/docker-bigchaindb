FROM ubuntu:wily
MAINTAINER Roderik van der Veer

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update \
        && apt-get upgrade -q -y \
        && apt-get dist-upgrade -q -y \
        && apt-get install -q -y wget \
        && echo "deb http://download.rethinkdb.com/apt wily main" | tee /etc/apt/sources.list.d/rethinkdb.list \
        && wget -qO- https://download.rethinkdb.com/apt/pubkey.gpg | apt-key add - \
        && apt-get update \
        && apt-get install  -q -y rethinkdb \
        && apt-get install  -q -y libffi-dev g++ libssl-dev python3-dev \
        && apt-get install  -q -y python3-setuptools \
        && easy_install3 pip \
        && pip install bigchaindb \
        && apt-get clean \
        && rm -rf /var/lib/apt/lists/*

ADD ./bigchaindb.rethink.conf /etc/rethinkdb/instances.d/bigchaindb.rethink.conf
ADD ./bigchaindb /root/.bigchaindb
ADD ./runservices.sh /root/runservices.sh

CMD ["/bin/bash", "-x", "/root/runservices.sh"]
