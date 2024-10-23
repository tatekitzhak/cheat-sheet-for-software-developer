## openssl
- https://www.libressl.org/
- https://man.openbsd.org/openssl.1
- https://www.bastionxp.com/blog/how-to-create-self-signed-ssl-tls-x.509-certificates-using-openssl#Conclusion
- https://docs.redhat.com/en/documentation/red_hat_enterprise_linux/8/html/securing_networks/creating-and-managing-tls-keys-and-certificates_securing-networks#con_tls-certificates_creating-and-managing-tls-keys-and-certificates
- https://dev.to/techschoolguru/how-to-create-sign-ssl-tls-certificates-2aai

- `sudo apt-get update`
- Check if OpenSSL is already installed: 
- `openssl version`
- If OpenSSL is installed, output: `OpenSSL 1.1.1f  31 Mar 2020`
- Installing OpenSSL using Apt:
- https://www.webhi.com/how-to/how-to-install-openssl-on-ubuntu-linux/
- https://docs.openiam.com/docs-4.2.1.3/appendix/2-openssl

- `sudo openssl req -key <server-private.key> -config <example_server.cnf> -new -out <server-cert.csr>`
- sudo openssl x509 -req -in <client-cert.csr> -CA <ca.crt> -CAkey <ca.key> -CAcreateserial -days 365 -extfile <openssl.cnf> -extensions <client-cert> -out <client-cert.crt> <client-cert.csr> -CA <ca.crt> -CAkey <ca.key> -CAcreateserial -days 365 -extfile <openssl.cnf> -extensions <client-cert> -out <client-cert.crt>
- 
```
sudo openssl -req x509 -new -newkey rsa:2048 -nodes -days 365 \
     -keyout </etc/nginx/ssl/server.key > \
     -out </etc/nginx/ssl/server-cert.csr >
```
- 
```
sudo openssl req -x509 \
     -newkey rsa:4096 \
     -days 365 \
     -keyout ca-key.pem \
     -out ca-cert.pem
```

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

    server {

        ####
        # A single HTTP/HTTPS server
        ####

        listen 80 default_server;
        listen [::]:80 default_server;

        listen 443 default_server ssl;
        listen [::]:443 default_server;
        server_name example.com www.example.com;

        keepalive_timeout   70;
        
        # ssl on;

        ssl_certificate     /etc/letsencrypt/live/ssl.itsyndicate.org/fullchain.pem;
        ssl_certificate_key /etc/letsencrypt/live/ssl.itsyndicate.org/privkey.pem;
        ssl_protocols       TLSv1 TLSv1.1 TLSv1.2 TLSv1.3;
        ssl_ciphers         HIGH:!aNULL:!MD5;

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