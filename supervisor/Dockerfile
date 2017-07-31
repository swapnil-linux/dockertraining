FROM ubuntu:16.04

RUN apt-get update && apt-get -y install supervisor redis-server lighttpd \
&& rm -rf /var/cache/apt/archives/* \
&& rm -rf  /var/lib/apt/lists/*

COPY supervisord.conf /etc/supervisor/supervisord.conf

EXPOSE 80 9001 6379

CMD ["/usr/bin/supervisord","-n","-c","/etc/supervisor/supervisord.conf"]
