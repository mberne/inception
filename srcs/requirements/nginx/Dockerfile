FROM debian:buster

WORKDIR /home/

RUN apt-get update -y && apt-get upgrade -y

RUN apt-get install -y nginx openssl

EXPOSE 443

COPY conf/ .

RUN rm -rf /etc/nginx/sites-enabled/default && mv /home/nginx.conf /etc/nginx/sites-enabled/default

RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
	-subj "/C=FR/ST=Auvergne-Rhone-Alpes/L=Lyon/emailAddress=mberne@student.42lyon.fr" \
	-keyout /etc/ssl/private/nginx-selfsigned.key \
	-out /etc/ssl/certs/nginx-selfsigned.crt

ENTRYPOINT ["nginx", "-g", "daemon off;"]
