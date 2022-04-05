FROM debian:buster

WORKDIR /home/

RUN apt-get update -y && apt-get upgrade -y

RUN apt-get install -y mariadb-server mariadb-client

COPY conf/ .

CMD ["sh", "mariadb.sh"]

ENTRYPOINT ["mysqld"]
