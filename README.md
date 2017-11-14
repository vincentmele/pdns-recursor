inoc/pdns-recursor
===========
A Docker container for a PowerDNS recursor.

Usage
-----
This container runs PowerDNS Recursor. It exposes port 5353 by default

```bash
sudo docker run \ 
-e LOGLEVEL=6 -e \
ALLOW_FROM=0.0.0.0/0 \
-p 53:5353/udp -p 8083:8083 \
inoc/pdns-recursor
```

All configuration options available as environment variables:
```bash
ALLOW_FROM=${ALLOW_FROM:-127.0.0.1/8}
LOCAL_PORT=${LOCAL_PORT:-5353}
LOCAL_ADDRESS=${LOCAL_ADDR:-0.0.0.0}
WEBSERVER_PORT=${WEBSERVER_PORT:-8083}
API_READONLY=${API_READONLY:-yes}
API_KEY=${API_KEY:-"readonly"}
LOGLEVEL=${LOGLEVEL:-6}
```

See https://doc.powerdns.com/md/recursor/settings/ for descriptions.
