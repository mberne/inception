cd /etc/nginx/sites-enabled
rm -rf default
mv /home/nginx.conf .
openssl req -x509 -nodes -days 365 -newkey rsa:2048 -subj "/C=FR/ST=Auvergne-Rhone-Alpes/L=Lyon/emailAddress=mberne@student.42lyon.fr" -keyout /etc/ssl/private/nginx-selfsigned.key -out /etc/ssl/certs/nginx-selfsigned.crt
