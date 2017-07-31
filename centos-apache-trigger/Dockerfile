FROM centos:7

LABEL maintainer="swapnil@mask365.com"

RUN yum -y install httpd php php-mysql \
&& rm -rf /var/cache/yum/* \
&& yum clean all

ENV PORT 8080
RUN sed -i 's/^Listen 80/Listen ${PORT}/g' /etc/httpd/conf/httpd.conf

ADD https://www.adminer.org/latest-mysql-en.php /var/www/html/index.php
RUN chown apache:apache /var/www/html/index.php && chmod 644 /var/www/html/index.php
COPY test.html /var/www/html/
EXPOSE ${PORT}
VOLUME /var/www/html

ONBUILD ADD src/ /var/www/html/

CMD ["/usr/sbin/apachectl", "-DFOREGROUND"]
