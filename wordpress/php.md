# Ubuntu: Configuring a LEMP stack (Linux, Nginx, MySQL, PHP)
1. https://medium.com/@sutrapusharan/how-to-install-wordpress-on-aws-with-ubuntu-22-04-with-a-lamp-stack-220f7335089c
2. https://blog.oudel.com/install-wordpress-on-aws-ec2-ubuntu-a-comprehensive-guide/
- `sudo apt update` - will refresh the list of available packages.
- `sudo apt upgrade` - will upgrade all installed packages.

## Install PHP
- `sudo apt install php8.3 php8.3-gb php8.3-zip php8.3-fpm`
OR sudo apt install php8.2 php8.2-fpm -y
- `sudo apt install php php-gb php-zip php-fpm -y`
- `cd /var/run/php/`
- `ls`
Install essential PHP modules required by most dynamic applications.
- `sudo apt install php-mysql php-cli -y`
 Version of PHP and View the PHP-FPM unix socket path using the ss utility:
- `ss -pl | grep php`
- `sudo php -v`
Start the PHP-FPM service depending on your installed version such as PHP 8.3.
- `sudo systemctl start/status php8.3-fpm`
- `sudo systemctl php8.x-fpm restart`

## Create a sample PHP file to test the PHP configuration via browser:
- To do so, create a file called “info.php” under Nginx document root folder.
- `sudo vim /var/www/html/info.php`
- Add the following lines:
```
<?php
phpinfo();
?>
```
- `sudo systemctl restart nginx`

## Testing nginx -> /info.php default web page
-  http://your_server_ip/info.php
