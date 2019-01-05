#!/bin/bash

# Install host basics
apt-get -y update
apt-get install -y net-tools procps vim 

# Get latest Varnish
apt-get install -y curl gnupg apt-transport-https
curl -L https://packagecloud.io/varnishcache/varnish60lts/gpgkey | apt-key add -
echo "deb https://packagecloud.io/varnishcache/varnish60lts/debian/ stretch main" > /etc/apt/sources.list.d/varnishcache_varnish60lts.list
echo "deb-src https://packagecloud.io/varnishcache/varnish60lts/debian/ stretch main" >> /etc/apt/sources.list.d/varnishcache_varnish60lts.list
apt-get update
apt-get install -y varnish
