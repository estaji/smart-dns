# About
This project helps you to change your IP address for specific websites to bypass regional restrictions.

This package provides the same service as [Shecan.ir](https://shecan.ir/).

All credit to [Mojtaba Ahadi](https://github.com/M-Ahadi/dockers).

This is not the only solution, also you can use [smartSNI](https://github.com/bepass-org/smartSNI).

# How
1. Install docker on the server.
2. Stop other services on ports ``443``, ``80``, and ``53``.
3. Replace your server's IP address in ``dnsmasq/proxy.conf`` file. This command can do it for you:

```
sed -i 's/YOUR_VPS_IP/xxx.xxx.xxx.xxx/' dnsmasq/proxy.conf
```

4. Edit ``dnsmasq/proxy.conf`` file to configure websites you want to bypass regional restrictions.
5. Do docker compose up:
```
docker compose up -d
```

# Contribution
All contributions are welcomed.
