FROM alpine
MAINTAINER lentin <docker@lte.pw>

RUN apk add --no-cache squid curl && \
        chmod +x /entrypoint.sh && \
        squid -z -F

ADD squid.conf /etc/squid/squid.conf
ADD entrypoint.sh /entrypoint.sh

EXPOSE 3128

ENTRYPOINT ["/entrypoint.sh"]
