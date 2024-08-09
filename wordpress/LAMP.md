

# Ubuntu: Configuring a LAMP stack (Linux, Apache, MySQL, PHP)
1. https://medium.com/@sutrapusharan/how-to-install-wordpress-on-aws-with-ubuntu-22-04-with-a-lamp-stack-220f7335089c
2. https://blog.oudel.com/install-wordpress-on-aws-ec2-ubuntu-a-comprehensive-guide/
- `sudo apt update` - will refresh the list of available packages.
- `sudo apt upgrade` - will upgrade all installed packages.

## Now, install Apache.
- `sudo apt install apache2` - Install Apache.
- `sudo systemctl status apache2` - Check and verify Apache server is running.
- `sudo systemctl enable apache2`
- `sudo systemctl stop apache2`
- `sudo ufw status`

## Testing Apache default web page
-  http://your_server_ip

## Install MySQL
 - `sudo apt install mysql-server` 
 - `sudo mysql_secure_installation`- To make the database more secure.
 - `sudo service mysql status` - Check our SQL database status.
 - `sudo mysql` - Log into our SQL database.
 - `quit` - To exit the MySQL console.

## Install PHP
- `sudo apt install php8.3 libapache2-mod-php php-mysql`
- `sudo php -v` - Version of PHP.

## Install phpMyAdmin to manage MySQL
- `sudo apt update`
- `sudo apt install phpmyadmin`

## Problem Solutions
- https://devdiaryacademy.medium.com/the-requested-url-phpmyadmin-was-not-found-on-this-server-developer-diary-9528089e4021
- `sudo vim /etc/apache2/apache2.conf`
- `Include /etc/phpmyadmin/apache.conf` Include PHPMyAdmin configuration file
- ` sudo systemctl restart apache2` Restart Apache

# Uninstall phpMyAdmin
- https://linuxscriptshub.com/how-to-uninstall-phpmyadmin-on-ubuntu/
- `sudo apt remove phpmyadmin`

## Manually removing phpMyAdmin
- `sudo rm -rf /usr/share/phpmyadmin`

## Create a MySQL Database and User for WordPress
- https://medium.com/@sutrapusharan/how-to-install-wordpress-on-aws-with-ubuntu-22-04-with-a-lamp-stack-220f7335089c
- `CREATE DATABASE wordpress DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;`
- `CREATE USER 'wordpressuser'@'localhost' IDENTIFIED BY 'wordpressPasword';`
- `GRANT ALL PRIVILEGES ON wordpress.* TO 'wordpressuser'@'localhost';`
- `FLUSH PRIVILEGES;`
- `EXIT;`

