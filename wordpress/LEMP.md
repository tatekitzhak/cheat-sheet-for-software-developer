

# Ubuntu: Configuring a LEMP stack (Linux, Nginx, MySQL, PHP)
1. https://medium.com/@sutrapusharan/how-to-install-wordpress-on-aws-with-ubuntu-22-04-with-a-lamp-stack-220f7335089c
2. https://blog.oudel.com/install-wordpress-on-aws-ec2-ubuntu-a-comprehensive-guide/
- `sudo apt update` - will refresh the list of available packages.
- `sudo apt upgrade` - will upgrade all installed packages.

## Now, install Nginx.
- `sudo apt install nginx` - Install Apache.
- `sudo systemctl start/status nginx` - Check and verify Nginx server is running.
- `sudo systemctl stop nginx` - A commo reason to stop is to change configration.
- `sudo systemctl reload nginx`- 
- `sudo systemctl enable nginx`
- `sudo nginx -t` - Check Nginx Configuration Syntax is correct. useful if you have made changes or added a new configuration to the existing configuration structure.

- `pgrep nginx`
- `ss -tlpn | grep :80`
- `sudo ufw status`

## Testing Apache default web page
-  http://your_server_ip

## Install MySQL
- `sudo apt install mysql-server mysql-client -y` 
- `sudo mysql_secure_installation`- To make the database more secure.
- `sudo service mysql status` - Check our SQL database status.
- `sudo service mysql enable`

- `sudo mysql` - Log into our SQL database.
- `quit` - To exit the MySQL console.

## Create a MySQL Database and User for WordPress
- https://medium.com/@sutrapusharan/how-to-install-wordpress-on-aws-with-ubuntu-22-04-with-a-lamp-stack-220f7335089c
- `sudo mysql -u root -p`  
- `CREATE DATABASE wordpress_db_name DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;`
- `CREATE USER 'wordpress_username'@'localhost' IDENTIFIED BY 'wordpress_secret_pasword';`
- `GRANT ALL PRIVILEGES ON wordpress.* TO 'wordpress_username'@'localhost';`
- `FLUSH PRIVILEGES;`
- `EXIT;`

## Install PHP
- `sudo apt install php8.3 php8.3-gb php8.3-zip php8.3-fpm php-mysql`
OR
- `sudo apt install php php-gb php-fpm php-mysql`
- `sudo systemctl status php` Or `sudo systemctl status php8.3-fpm`
- `sudo php -v` - Version of PHP.

## Setting up the WordPress 
Open the WordPress site directory.
- `cd /var/www/wordpress/`
Download latest WordPress package and untar it.
- `sudo wget http://wordpress.org/latest.tar.gz` 
- `tar -xzvf latest.tar.gz`
Copy the untared files to the current folder and delete the other files
- `sudo cp -r ./wordpress/* ./`
- `sudo rm -r wordpress`
- `sudo rm latest.tar.gz`
- Let's create the MySQL WordPress user
- https://gist.github.com/janikvonrotz/9320678
- https://api.wordpress.org/secret-key/1.1/salt/


## Install phpMyAdmin to manage MySQL
- `sudo apt update`
- `sudo apt install phpmyadmin`

## Problem Solutions

# Uninstall phpMyAdmin
- https://linuxscriptshub.com/how-to-uninstall-phpmyadmin-on-ubuntu/
- `sudo apt remove phpmyadmin`

## Manually removing phpMyAdmin
- `sudo rm -rf /usr/share/phpmyadmin`
