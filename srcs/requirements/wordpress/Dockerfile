FROM debian:buster

WORKDIR /home/

RUN apt-get update -y && apt-get upgrade -y

RUN apt-get install -y wget php7.3 php7.3-fpm vim

COPY conf/ .

ENTRYPOINT ["sleep", "infinity"]
