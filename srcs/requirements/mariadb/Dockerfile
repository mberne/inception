FROM debian:buster

WORKDIR /home/

EXPOSE 3306

ARG DB_ROOT_PASSWORD
ARG DB_NAME
ARG DB_USER
ARG DB_PASSWORD

RUN apt-get update -y && apt-get upgrade -y

RUN apt-get install -y mariadb-server mariadb-client

RUN service mysql start && mariadb -u root -e \
"CREATE DATABASE IF NOT EXISTS ${DB_NAME};\
ALTER USER 'root'@'localhost' IDENTIFIED BY '${DB_ROOT_PASSWORD}';\
CREATE USER ${DB_USER}@'%' IDENTIFIED BY '${DB_PASSWORD}';\
GRANT ALL PRIVILEGES ON ${DB_NAME}.* TO ${DB_USER}@'%';\
FLUSH PRIVILEGES;"

CMD ["mysqld", "--bind-address=0.0.0.0"]
