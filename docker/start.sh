#!/bin/bash

# https://varnish-cache.org/docs/6.0/reference/varnishncsa.html
/usr/bin/varnishncsa -a -t off -w /var/log/varnish/access.log &

# https://varnish-cache.org/docs/6.0/reference/varnishd.html
/usr/sbin/varnishd -j unix,user=varnish -F -f /etc/varnish/default.vcl -a 0.0.0.0:80 -s malloc,256m
