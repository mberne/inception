FROM debian:buster

EXPOSE 9000

ARG DB_NAME
ARG DB_USER
ARG DB_PASSWORD

RUN apt-get update -y && apt-get upgrade -y

RUN apt-get install -y wget curl php-fpm php-mysql

WORKDIR /var/www/html

RUN wget http://fr.wordpress.org/latest-fr_FR.tar.gz \
	&& tar -xzvf latest-fr_FR.tar.gz \
	&& rm -rf latest-fr_FR.tar.gz \
	&& chown -R www-data:www-data wordpress

WORKDIR /var/www/html/wordpress

COPY conf/wp-config.php .

RUN rm -rf wp-config-sample.php

RUN sed -i "s/mariadb_name/${DB_NAME}/g" wp-config.php \
    && sed -i "s/mariadb_user/${DB_USER}/g" wp-config.php \
    && sed -i "s/mariadb_password/${DB_PASSWORD}/g" wp-config.php

RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar \
	&& chmod +x wp-cli.phar \
	&& mv wp-cli.phar /usr/local/bin/wp

WORKDIR /etc/php/7.3/fpm/pool.d

RUN rm www.conf

COPY conf/www.conf .

WORKDIR /home/

COPY tools/ .

ENTRYPOINT ["sh", "wordpress.sh"]
