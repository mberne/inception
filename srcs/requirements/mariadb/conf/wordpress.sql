CREATE DATABASE IF NOT EXISTS wordpress_database;

CREATE USER 'user'@'localhost' IDENTIFIED BY 'user_password';

GRANT ALL PRIVILEGES ON wordpress_database.* TO "user"@"localhost";

FLUSH PRIVILEGES;
