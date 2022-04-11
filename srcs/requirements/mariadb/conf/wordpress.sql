CREATE DATABASE IF NOT EXISTS wordpress_database;

CREATE USER 'user'@'%' IDENTIFIED BY 'user_password';

GRANT ALL PRIVILEGES ON wordpress_database.* TO "user"@"%";

FLUSH PRIVILEGES;
