FROM debian:buster

WORKDIR /home/

EXPOSE 3306

RUN apt-get update -y && apt-get upgrade -y

RUN apt-get install -y mariadb-server mariadb-client

COPY conf/ .

RUN service mysql start && mariadb < wordpress.sql

CMD ["mysqld", "--bind-address=0.0.0.0"]
