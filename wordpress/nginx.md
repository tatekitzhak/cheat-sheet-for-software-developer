# Ubuntu: Configuring a LEMP stack (Linux, Nginx, MySQL, PHP)
1. https://medium.com/@sutrapusharan/how-to-install-wordpress-on-aws-with-ubuntu-22-04-with-a-lamp-stack-220f7335089c
2. https://blog.oudel.com/install-wordpress-on-aws-ec2-ubuntu-a-comprehensive-guide/
- `sudo apt update` - will refresh the list of available packages.
- `sudo apt upgrade` - will upgrade all installed packages.

## Install Nginx.
- `sudo apt install nginx` - Install Apache.
- `sudo systemctl start/status nginx` - Check and verify Nginx server is running.
- `sudo systemctl stop nginx` - A commo reason to stop is to change configration.
- `sudo systemctl reload nginx`- 
- `sudo systemctl enable nginx`
- `sudo nginx -t` - Check Nginx Configuration Syntax is correct. useful if you have made changes or added a new configuration to the existing configuration structure.

- `pgrep nginx`
- `ss -tlpn | grep :80`
- `sudo ufw status`

## Testing nginx default web page
-  http://your_server_ip

https://www.scaleway.com/en/docs/tutorials/wordpress-lemp-stack/
```
server {
        listen 80;

        root /var/www/wordpress;
        index index.php index.html index.htm;

        server_name blog.example.com;

        location = /50x.html {
                root /usr/share/nginx/html;
        }
        location / {
                # try_files $uri $uri/ =404;
                try_files $uri $uri/ /index.php?q=$uri&$args;
        }

        location ~ \.php$ {
                try_files $uri =404;
                fastcgi_split_path_info ^(.+\.php)(/.+)$;
                fastcgi_pass unix:/run/php/php8.x-fpm.sock;
                fastcgi_index index.php;
                fastcgi_param SCRIPT_FILENAME $document_root$fastcgi_script_name;
                include fastcgi_params;
        }

        location = /favicon.ico {
                access_log off;
                log_not_found off;
                expires max;
        }
        location = /robots.txt {
                access_log off;
                log_not_found off;
        }

# Cache Static Files For As Long As Possible
        location ~*
        \.(ogg|ogv|svg|svgz|eot|otf|woff|mp4|ttf|css|rss|atom|js|jpg|jpeg|gif|png|ico|zip|tgz|gz|rar|bz2|doc|xls|exe|ppt|tar|mid|midi|wav|bmp|rtf)$
        {
                access_log off;
                log_not_found off;
                expires max;
        }
# Security Settings For Better Privacy Deny Hidden Files
        location ~ /\. {
                deny all;
                access_log off;
                log_not_found off;
        }
# Return 403 Forbidden For readme.(txt|html) or license.(txt|html)
        if ($request_uri ~* "^.+(readme|license)\.(txt|html)$") {
            return 403;
        }
# Disallow PHP In Upload Folder
        location /wp-content/uploads/ {
                location ~ \.php$ {
                        deny all;
                }
        }
}
```