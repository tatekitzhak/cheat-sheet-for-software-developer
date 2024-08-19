## Network and Statistics
- https://cloudkatha.com/how-to-install-nginx-on-amazon-linux-2-instance/
- 
### Install Nginx on Amazon Linux 2 EC2 instance

NGINX config
- `sudo vim /etc/nginx/nginx.conf`
### 
- To help : `nginx -h`
- Version: `nginx -V` or `nginx -v`
- Check nginx runnig: `ps -ef | grep nginx`
- Check nginx status: `sudo systemctl status nginx`
- Use `sudo lsof -i TCP:80` to see what application is listening on port 80



### log
- `sudo tail -f /var/log/nginx/access.log`
- `sudo ls -l /var/log/nginx`
- Find the Nginx port as listed: `sudo netstat -tlpn| grep nginx`

### NGINX BASIC COMMAND
- `sudo apt install nginx` - Install Apache.
- `sudo systemctl start/status nginx` - Check and verify Nginx server is running.
- `sudo systemctl stop nginx` - A commo reason to stop is to change configration.
- `sudo systemctl reload nginx`- 
- `sudo systemctl enable nginx`
- `sudo nginx -t` - Check Nginx Configuration Syntax is correct. useful if you have made changes or added a new configuration to the existing configuration structur
- `sudo systemctl restart nginx.service`
- `nginx -s reload`