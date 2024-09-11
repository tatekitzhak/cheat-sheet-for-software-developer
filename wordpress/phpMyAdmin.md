# Ubuntu: Configuring a LEMP stack (Linux, Nginx, MySQL, PHP)
1. https://medium.com/@sutrapusharan/how-to-install-wordpress-on-aws-with-ubuntu-22-04-with-a-lamp-stack-220f7335089c
2. https://blog.oudel.com/install-wordpress-on-aws-ec2-ubuntu-a-comprehensive-guide/
- `sudo apt update` - will refresh the list of available packages.
- `sudo apt upgrade` - will upgrade all installed packages.

## Install phpMyAdmin to manage MySQL
- `sudo apt update`
- `sudo apt install phpmyadmin`
- `sudo ln -s /usr/share/phpmyadmin /var/www/html`

## Testing phpmyadmin
-  http://your_server_ip/phpmyadmin

# Problem Solutions

## Uninstall phpMyAdmin
- https://linuxscriptshub.com/how-to-uninstall-phpmyadmin-on-ubuntu/
- `sudo apt remove phpmyadmin`

## Manually removing phpMyAdmin
- `sudo rm -rf /usr/share/phpmyadmin`

## Reinstall PHPMyAdmin
- Remove PHPMyAdmin

- `sudo apt purge phpmyadmin`
- `sudo apt autoremove`
- `sudo apt clean`
- `sudo apt install phpmyadmin`
