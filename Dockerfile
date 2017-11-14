FROM alpine:latest

MAINTAINER Vince Mele <vmele@inoc.com>

RUN apk --no-cache add pdns-recursor
COPY files/entrypoint.sh /entrypoint.sh

EXPOSE 5353 8083
ENTRYPOINT ["/entrypoint.sh"]
