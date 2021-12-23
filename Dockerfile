FROM alpine
RUN echo "Instalando nginx"
RUN apk add nginx
RUN apk add --no-cache php7-cli \
                        php-curl \
                        php-xmlrpc \ 
                        php-xml \
                        php7-json \
                        php7-openssl \
                        php7-pear \
                        php7-dev gcc \
                        libc-dev \
                        openssl-dev \
                        make; \
pecl channel-update pecl.php.net; \
#pecl install mongodb; \
#echo extension=mongodb.so > /etc/php7/conf.d/10_mongodb.ini; \
mkdir -p /var/www/html; \
echo '<?php phpinfo();' > /var/www/html/index.php
EXPOSE 8080
CMD ["/usr/bin/php", "-S", "0.0.0.0:8080", "-t", "/var/www/html"]