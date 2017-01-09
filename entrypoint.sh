#!/bin/sh
if [ "$HOSTNAME" != "" ]; then
  echo "visible_hostname $HOSTNAME" >> /etc/squid/squid.conf
fi
/usr/sbin/squid -NX
