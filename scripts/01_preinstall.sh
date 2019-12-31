#!/bin/bash

sudo apt-get update
sudo apt-get install -y \
    build-essential clang-7 llvm-7 \
    rpcbind \
    rsyslog \
    libelf-dev \
    python3 \
    python3-pip \
    libcmocka-dev \
    lcov \
    docker.io

sudo pip3 install netaddr docker
