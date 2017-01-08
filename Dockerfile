FROM alpine
MAINTAINER lentin <noreply@lte.pw>

RUN apk add --no-cache squid curl && \
        chown -R squid:squid /var/cache/squid && \
        chown -R squid:squid /var/log/squid && \
        chmod +x /start-squid.sh && \
        squid -z && \
        mv /etc/squid/squid.conf /etc/squid/squid.conf.dist

ADD squid.conf /etc/squid/squid.conf
ADD entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/entrypoint.sh

EXPOSE 25

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
