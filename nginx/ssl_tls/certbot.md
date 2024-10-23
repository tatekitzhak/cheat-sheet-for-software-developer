# Install Certbot

- https://certbot.eff.org/instructions?ws=nginx&os=pip
- https://www.f5.com/company/blog/nginx/using-free-ssltls-certificates-from-lets-encrypt-with-nginx#:~:text=certbot%20can%20automatically%20configure%20NGINX,re%20requesting%20a%20certificate%20for.

- Install Certbot and it’s Nginx plugin with apt:
- `sudo apt-get update` 
- `sudo apt install certbot python3-certbot-nginx`
- 
```
worker_processes auto;

http {

    ####
    # HTTPS server optimization
    ####
    ssl_session_cache   shared:SSL:10m;
    ssl_session_timeout 10m;

    #server {
        
    #    server_name example.com www.example.com localhost;
    #    listen 80 default_server;
    #    listen [::]:80 default_server;

    #    location / {
    #        if ($request_uri = "/http-stats.html") {
    #            return 200 http://$host$request_uri;
    #        }
    #        return 301 https://$host$request_uri;
    #    }
    #}

    server {

        ####
        # A single HTTP/HTTPS server
        ####

        listen 80 default_server;
        listen [::]:80 default_server;

        listen 443 default_server ssl; # managed by Certbot
        #listen [::]:443 default_server;
        listen [::]:443 default_server ssl ipv6only=on; # managed by Certbot
        server_name example.com www.example.com;

        keepalive_timeout   70;
        
        # ssl on;

        ssl_certificate     /etc/letsencrypt/live/ssl.itsyndicate.org/fullchain.pem;
        ssl_certificate_key /etc/letsencrypt/live/ssl.itsyndicate.org/privkey.pem;
        ssl_protocols       TLSv1 TLSv1.1 TLSv1.2 TLSv1.3;
        ssl_ciphers         HIGH:!aNULL:!MD5;
        include /etc/letsencrypt/options-ssl-nginx.conf; # managed by Certbot
        ssl_dhparam /etc/letsencrypt/ssl-dhparams.pem; # managed by Certbot

        ####
        # Nginx only supports HTTPS, not HTTP.
        ####
        
        if ($scheme = http) {
            return 301 https://$server_name$request_uri;
        } # managed by Certbot

        if ($host = two.example.com) {
            return 301 https://$host$request_uri;
        } # managed by Certbot

        location / {
            proxy_pass http://localhost:5003; 
        }
    }
}

```
- Save the file, then run this command to verify the syntax of your configuration and restart NGINX:
- `sudo nginx -t && sudo systemctl reload nginx`
- Obtain the SSL/TLS Certificate:
- `sudo certbot --nginx -d example.com -d www.example.com`

## Verifying Certbot Auto-Renewal
- `sudo systemctl status certbot.timer` OR `sudo certbot renew --dry-run`

## Test SSL Configuration
- `curl -vI https://websitname.com`
```
Server certificate:
subject: CN=ssl.itsyndicate.org
start date: May  3 15:44:12 2018 GMT
expire date: Aug  1 15:44:12 2018 GMT
subjectAltName: host "ssl.itsyndicate.org" matched cert's "ssl.itsyndicate.org"
issuer: C=US; O=Let's Encrypt; CN=Let's Encrypt Authority X3
SSL certificate verifies ok.
```