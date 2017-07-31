FROM alpine:latest

RUN apk --update add \
bash nano curl \
redis && \
rm -rf /var/cache/apk/*

ADD "https://github.com/tianon/gosu/releases/download/1.9/gosu-amd64" /usr/local/bin/gosu
RUN chmod 755 /usr/local/bin/gosu

RUN mkdir /data
RUN chown redis:redis /data

COPY docker-entrypoint.sh /
RUN chmod +x /docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh"]

WORKDIR /data

EXPOSE 6379

VOLUME /data

CMD [ "redis-server" ]
