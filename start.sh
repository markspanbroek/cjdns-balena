#!/bin/bash
cd /cjdns

if [ ! -f  cjdroute.conf ]; then
  (umask 077 && ./cjdroute --genconf > cjdroute.conf)
fi

sudo ./cjdroute --nobg < cjdroute.conf
