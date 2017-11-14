#!/bin/sh

ALLOW_FROM=${ALLOW_FROM:-127.0.0.1/8}
LOCAL_PORT=${LOCAL_PORT:-5353}
LOCAL_ADDRESS=${LOCAL_ADDR:-0.0.0.0}
WEBSERVER_PORT=${WEBSERVER_PORT:-8083}
API_READONLY=${API_READONLY:-yes}
API_KEY=${API_KEY:-"readonly"}
LOGLEVEL=${LOGLEVEL:-6}

OPTIONS=""
OPTIONS="${OPTIONS}--local-address=${LOCAL_ADDRESS} "
OPTIONS="${OPTIONS}--local-port=${LOCAL_PORT} "
OPTIONS="${OPTIONS}--allow-from=${ALLOW_FROM} "
#OPTIONS+="--setuid=pdns "
#OPTIONS+="--setgid=pdns "
OPTIONS="${OPTIONS}--webserver=yes "
OPTIONS="${OPTIONS}--webserver-address=0.0.0.0 "
OPTIONS="${OPTIONS}--webserver-port=${WEBSERVER_PORT} "
OPTIONS="${OPTIONS}--api-key=${API_KEY} "
OPTIONS="${OPTIONS}--api-readonly=${API_READONLY} "
OPTIONS="${OPTIONS}--loglevel=${LOGLEVEL} "
OPTIONS="${OPTIONS}--daemon=no "

# Start PowerDNS
/usr/sbin/pdns_recursor ${OPTIONS}
