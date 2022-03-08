cd /var/www/html
wget http://fr.wordpress.org/latest-fr_FR.tar.gz
tar -xzvf latest-fr_FR.tar.gz
rm -rf latest-fr_FR.tar.gz
chown -R www-data:www-data wordpress
cd wordpress
rm -rf ./wp-config-sample.php
mv /home/wp-config.php .

cd /var/www/html
wget https://files.phpmyadmin.net/phpMyAdmin/5.0.4/phpMyAdmin-5.0.4-all-languages.tar.gz
tar -xzvf phpMyAdmin-5.0.4-all-languages.tar.gz
mv phpMyAdmin-5.0.4-all-languages phpmyadmin
rm -rf phpMyAdmin-5.0.4-all-languages.tar.gz
chown -R www-data:www-data phpmyadmin
cd phpmyadmin
rm -rf config.sample.inc.php
mv /home/config.inc.php .
