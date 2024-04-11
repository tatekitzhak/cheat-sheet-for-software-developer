## How to install and uninstall Nginx on Ubuntu / Debian Linuxs
- https://www.cyberciti.biz/faq/remove-uninstall-nginx-from-ubuntu-debian-linux-apt-get-command/
- https://gcore.com/learning/how-to-uninstall-nginx-ubuntu/

### uninstall Nginx 
1. Uninstall Nginx package including all config files data, run:
    - `sudo apt purge nginx nginx-common nginx-core` OR `sudo apt purge nginx nginx-commo`
2. `sudo apt autoremove`
3. `sudo rm -rf /etc/nginx /var/log/nginx`
4. Verify that /etc/nginx/ and /usr/share/nginx/ are empty when you use the purge option:
    - `ls -l /etc/nginx/ /usr/share/nginx/`

### install
- Want to install the Nginx web server again on your server or developer machine? Try the apt command as follows:
- `sudo apt install nginx nginx-common nginx-core`
