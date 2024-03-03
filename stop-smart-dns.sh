#!/bin/bash

# stop smart-dns
docker compose down

# start normal services
systemctl stop nginx
systemctl stop systemd-resolved

# ensure situation
systemctl status nginx
systemctl status systemd-resolved
netstat -tlpn
ping google.com