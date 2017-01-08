#!/bin/sh
/usr/sbin/squid -NYCd 1 &
tail -f /var/log/squid/access.log
