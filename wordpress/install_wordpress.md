# Ubuntu: Configuring a LEMP stack (Linux, Nginx, MySQL, PHP)


## Setup WordPress webserver and file permissions for write access to the files. 
- `cd /var/www/html`
- `sudo chmod -R 755 /var/www/html`
- `chown www-data:www-data  -R *`  # Let Apache be owner
For Directories:
- `sudo find . -type d -exec chmod 755 {} \;`  # Change directory permissions rwxr-xr-x
For Files:
- `sudo find . -type f -exec chmod 644 {} \;`  # Change file permissions rw-r--r--

## Create a MySQL Database and User for WordPress
- https://medium.com/@sutrapusharan/how-to-install-wordpress-on-aws-with-ubuntu-22-04-with-a-lamp-stack-220f7335089c
- `sudo mysql -u root -p`  
- `CREATE DATABASE wordpress_db_name DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;`
- `CREATE USER 'wordpress_username'@'localhost' IDENTIFIED BY 'wordpress_secret_pasword';`
- `GRANT ALL PRIVILEGES ON wordpress_db_name.* TO 'wordpress_username'@'localhost';`
- `FLUSH PRIVILEGES;`
- `EXIT;`

## Setting up the WordPress 
Open the WordPress site directory.
- `cd /var/www/html`
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

password mysql: mySQL#3.1415
password wordpress: wordPress#3.1415

mysql> ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'mySQL#3.1415';

CREATE DATABASE wordpress_db_test DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
CREATE USER 'wordpress_test'@'localhost' IDENTIFIED BY 'wordPress#3.1415';
GRANT ALL PRIVILEGES ON wordpress_db_name.* TO 'wordpress_test'@'localhost';
FLUSH PRIVILEGES;

Username: wordpress_test
Password: cje&A5@0bBBuxLvWDi

===========lemp2======
Database name: wordpress
User: wordpressuser
Password: password

------
When first setting up your server, you can open up the permissions like so:

https://gist.github.com/Adirael/3383404#file-fix-wordpress-permissions-sh
https://blog.nginx.org/blog/installing-wordpress-with-nginx-unit
https://blog.nginx.org/blog/automating-installation-wordpress-with-nginx-unit-on-ubuntu
https://www.linode.com/community/questions/7883/wordpress-file-ownership-and-permissions
https://www.youtube.com/watch?v=UdKWr8K1uAQ

Change the ownership of the site directory:
sudo chown -R yourcurrentuser:currentgroup /srv/www/htdocs/wordpress
sudo chown -R www-data:www-data /var/www/html/wordpress
sudo chown -R www-data:www-data /var/www/html

sudo chmod -R 755 /var/www/html/wordpress
sudo chmod 777 /var/www/html
----
$ sudo chown -R wpuser:www-data /var/www/wordpress

$ sudo find /var/www/wordpress -type d -exec chmod g+s {} \;

$ sudo chmod g+w /var/www/wordpress/wp-content

$ sudo chmod -R g+w /var/www/wordpress/wp-content/themes

$ sudo chmod -R g+w /var/www/wordpress/wp-content/plugins
-----
What are the specific file permissions required for WordPress installations?
WordPress requires the following file permissions:

Directories: 755 (rwxr-xr-x)
Files: 644 (rw-r–r–)

These permissions ensure that the web server has access to create, modify, and read files within the WordPress installation.
-----

## Changing wordpress file permissions
 
https://developer.wordpress.org/advanced-administration/security/hardening/#file-permissions

For Directories:
- `find /path/to/your/wordpress/install/ -type d -exec chmod 755 {} \;`
For Files:
- `find /path/to/your/wordpress/install/ -type f -exec chmod 644 {} \;`