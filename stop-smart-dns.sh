#!/bin/bash

# stop smart-dns
docker compose down

# start normal services
systemctl start nginx
sleep 2
systemctl start systemd-resolved
sleep 2

# close the port on firewall
ufw delete allow 53

# ensure situation
systemctl status nginx
systemctl status systemd-resolved
netstat -tlpn
ping google.com