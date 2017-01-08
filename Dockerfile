FROM alpine
MAINTAINER lentin <noreply@lte.pw>

RUN apk add --no-cache squid curl && \
        chown -R squid:squid /var/cache/squid && \
        chown -R squid:squid /var/log/squid && \
        chmod +x /entrypoint.sh && \
        squid -z && \
        mv /etc/squid/squid.conf /etc/squid/squid.conf.dist

ADD squid.conf /etc/squid/squid.conf

EXPOSE 25

ENTRYPOINT ["/entrypoint.sh"]
