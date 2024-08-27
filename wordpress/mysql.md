# Ubuntu: Configuring a LEMP stack (Linux, Nginx, MySQL, PHP)
1. https://medium.com/@sutrapusharan/how-to-install-wordpress-on-aws-with-ubuntu-22-04-with-a-lamp-stack-220f7335089c
2. https://blog.oudel.com/install-wordpress-on-aws-ec2-ubuntu-a-comprehensive-guide/
- `sudo apt update` - will refresh the list of available packages.
- `sudo apt upgrade` - will upgrade all installed packages.

## Testing nginx default web page
-  http://your_server_ip

## Install MySQL
- `sudo apt install mysql-server mysql-client -y` 
- `sudo mysql_secure_installation`- To make the database more secure.
- `sudo systemctl status mysql` - Check our SQL database status.
- `sudo systemctl enable mysql`
Check MySQL Version with V Command:
- `mysql -V`
Log into the MySQL shell using your MySQL root password:
- `sudo mysql -u root -p`
- `sudo mysql` - Log into our SQL database.
- `STATUS;`
- `SHOW DATABASES;` OR `SHOW SCHEMAS;`
- `show tables;`
- `quit` - To exit the MySQL console.


## Create a MySQL Database and User for WordPress
- https://docs.vultr.com/how-to-install-nginx-mysql-php-lemp-stack-on-ubuntu-24-04
- https://medium.com/@sutrapusharan/how-to-install-wordpress-on-aws-with-ubuntu-22-04-with-a-lamp-stack-220f7335089c
- `ALTER USER `root`@`localhost` IDENTIFIED WITH mysql_native_password BY 'secret_pasword';`
- Database for WordPress
- `sudo mysql -u root -p`  
- `CREATE DATABASE wordpress_db_name DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;`
- `CREATE USER 'wordpress_username'@'localhost' IDENTIFIED BY 'wordpress_secret_pasword';`
- `GRANT ALL PRIVILEGES ON wordpress_database_name.* TO 'wordpress_username'@'localhost';`
- `FLUSH PRIVILEGES;`
- `EXIT;`

