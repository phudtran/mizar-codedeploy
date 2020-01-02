#!/bin/bash

/etc/init.d/rpcbind restart
/etc/init.d/rsyslog restart
/etc/init.d/openvswitch-switch restart
ip link set dev eth0 up mtu 9000

cp /home/ubuntu/mizar/etc/transit.service /etc/systemd/system/

systemctl stop transit
systemctl disable transit

systemctl start transit
systemctl enable transit
