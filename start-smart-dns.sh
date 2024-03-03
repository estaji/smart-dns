#!/bin/bash

# stop services on ports 443, 80, 53
systemctl stop nginx
systemctl stop systemd-resolved

# update ips in dnsmasq/proxy.conf file
SRV_IP=$(hostname -i)
sed -i "s/YOUR_VPS_IP/$SRV_IP/" dnsmasq/proxy.conf

# stop other containers
docker ps --filter "name=nginx-proxy" --filter "name=dnsmasq-proxy" --filter status=running -aq | xargs docker stop | xargs docker rm

# start containers
docker compose up -d

# open the port on firewall (recommended to limit access from a source ip)
ufw allow 53