#!/bin/sh
if [ "$HOSTNAME" != "" ]; then
  printf "visible_hostname $HOSTNAME" >> /etc/squid/squid.conf
fi
/usr/sbin/squid -NX
