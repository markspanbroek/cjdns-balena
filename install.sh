#!/bin/bash
git clone https://github.com/cjdelisle/cjdns.git cjdns
cd cjdns
./do
sudo mkdir -p /dev/net
sudo mknod /dev/net/tun c 10 200
sudo chmod 0666 /dev/net/tun
