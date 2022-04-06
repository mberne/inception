FROM debian:buster

WORKDIR /home/

RUN apt-get update -y && apt-get upgrade -y

RUN apt-get install -y wget php-fpm php-cli

COPY conf/ .

RUN sh wordpress.sh

ENTRYPOINT ["sleep", "infinity"]

# ENTRYPOINT ["sh", "wordpress.sh"]
