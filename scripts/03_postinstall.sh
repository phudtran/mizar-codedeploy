#!/bin/bash

/etc/init.d/rpcbind restart
/etc/init.d/rsyslog restart
ip link set dev eth0 up mtu 9000

if [[ "$(docker images -q buildbox:v2 2> /dev/null)" == "" ]]; then
	echo "Building docker image"
	sudo docker build -f /home/ubuntu/mizar/scripts/Dockerfile -t buildbox:v2 /home/ubuntu/mizar/scripts
fi

make -C /home/ubuntu/mizar
make install -C /home/ubuntu/mizar
