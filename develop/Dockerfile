FROM python:3.5-alpine

COPY run.sh /root/run.sh
COPY create_tx.py /usr/src/app/create_tx.py

RUN apk --update add --virtual build_deps wget ca-certificates build-base libffi-dev openssl-dev && \
    pip install --upgrade pip && \
    cd /root && \
    wget https://github.com/bigchaindb/bigchaindb/archive/develop.tar.gz && \
    tar -xvzf develop.tar.gz && \
    rm -Rf develop.tar.gz && \
    cd bigchaindb-develop && \
    pip install --no-cache-dir -e .[dev] && \
    cd .. && \
    rm -rf /var/cache/apk/* && \
    chmod +x /root/run.sh

WORKDIR /usr/src/app

CMD [ "/root/run.sh", "python3", "/usr/src/app/create_tx.py" ]
