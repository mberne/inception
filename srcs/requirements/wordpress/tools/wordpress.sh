service php7.3-fpm start
wp --path=/var/www/html/wordpress --allow-root core install --url=$DOMAIN_NAME --title="Welcome, bro." --admin_user=wp_root --admin_password=wp_root_password --admin_email=root-email@example.com
wp --path=/var/www/html/wordpress --allow-root user create random random-email@exemple.com --user_pass=random_password
service php7.3-fpm stop
php-fpm7.3 -F -R
