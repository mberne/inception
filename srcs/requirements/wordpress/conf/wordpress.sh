# mkdir /var/www/html/
# cd /var/www/html
wget http://fr.wordpress.org/latest-fr_FR.tar.gz
tar -xzvf latest-fr_FR.tar.gz
rm -rf latest-fr_FR.tar.gz
chown -R www-data:www-data wordpress
cd wordpress
rm -rf ./wp-config-sample.php
mv /home/wp-config.php .
service php7.3-fpm start
wp user create wp_root root-email@exemple.com --user_pass=wp_root_password --role=administrator
wp user create random random-email@exemple.com --user_pass=random_password
