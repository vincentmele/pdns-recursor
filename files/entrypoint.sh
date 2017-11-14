#!/bin/bash

ALLOW_FROM=${ALLOW_FROM:-127.0.0.1/8}
LOCAL_PORT=${LOCAL_PORT:-5353}
LOCAL_ADDRESS=${LOCAL_ADDR:-0.0.0.0}
WEBSERVER_PORT=${WEBSERVER_PORT:-8083}
API_READONLY=${API_READONLY:-yes}
API_KEY=${API_KEY:-"readonly"}
LOGLEVEL=${LOGLEVEL:-6}

OPTIONS=()
OPTIONS+="--local-address=${LOCAL_ADDRESS} "
OPTIONS+="--local-port=${LOCAL_PORT} "
OPTIONS+="--allow-from=${ALLOW_FROM} "
#OPTIONS+="--setuid=pdns "
#OPTIONS+="--setgid=pdns "
OPTIONS+="--webserver=yes "
OPTIONS+="--webserver-address=0.0.0.0 "
OPTIONS+="--webserver-port=${WEBSERVER_PORT} "
OPTIONS+="--api-key=${API_KEY} "
OPTIONS+="--api-readonly=${API_READONLY} "
OPTIONS+="--loglevel=${LOGLEVEL} "
OPTIONS+="--daemon=no "

# Start PowerDNS
/usr/sbin/pdns_recursor ${OPTIONS}
