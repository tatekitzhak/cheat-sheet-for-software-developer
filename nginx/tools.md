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
- `sudo systemctl enable nginx`
- `sudo systemctl status nginx` 
- `sudo systemctl restart nginx` 
- `sudo systemctl start nginx `
- `sudo systemctl stop nginx`
restart:
- `sudo systemctl restart nginx.service`
- `nginx -s reload`