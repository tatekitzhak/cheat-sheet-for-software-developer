- 

# Configuring a LAMP stack (Linux, Apache, MySQL, PHP)
- `sudo apt update` - will refresh the list of available packages.
- `sudo apt upgrade` - will upgrade all installed packages.

## Now, install Apache.
- `sudo apt install apache2` - Install Apache.
- `sudo systemctl status apache2` - Check and verify Apache server is running.
- `sudo ufw status`

## Install MySQL
 - `sudo apt install mysql-server` 
 - `sudo mysql_secure_installation`- To make the database more secure.
 - `sudo service mysql status` - Check our SQL database status.
 - `sudo mysql` - Log into our SQL database.
 - `quit` - To exit the MySQL console.


