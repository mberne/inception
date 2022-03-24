CREATE DATABASE IF NOT EXISTS wordpress;

CREATE USER 'wp_root'@'localhost' IDENTIFIED BY 'root';
CREATE USER 'random'@'localhost' IDENTIFIED BY 'random';

GRANT ALL PRIVILEGES ON wordpress.* TO "wp_root"@"localhost" IDENTIFIED BY 'root';

FLUSH PRIVILEGES;
