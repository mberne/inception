FROM debian:buster

EXPOSE 9000

RUN apt-get update -y && apt-get upgrade -y

RUN apt-get install -y wget curl php-fpm php-mysql

WORKDIR /var/www/html

RUN wget http://fr.wordpress.org/latest-fr_FR.tar.gz \
	&& tar -xzvf latest-fr_FR.tar.gz \
	&& rm -rf latest-fr_FR.tar.gz \
	&& chown -R www-data:www-data wordpress

WORKDIR /var/www/html/wordpress

COPY conf/ .

RUN rm -rf wp-config-sample.php

RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar \
	&& chmod +x wp-cli.phar \
	&& mv wp-cli.phar /usr/local/bin/wp

WORKDIR /home/

COPY tools/ .

ENTRYPOINT ["sh", "wordpress.sh"]
