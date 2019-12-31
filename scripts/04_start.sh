#!/bin/bash

/etc/init.d/rpcbind restart
/etc/init.d/rsyslog restart
ip link set dev eth0 up mtu 9000

nohup /home/ubuntu/mizar/build/bin/transitd &

pgrep transitd

if [ $? -eq 0 ]
then
  logger "Successfully started transitd"
  exit 0
else
  logger "Failure starting transitd"
  exit 1
fi