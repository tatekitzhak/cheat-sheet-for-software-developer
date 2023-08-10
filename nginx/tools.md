## Network and Statistics
- 
- 

### 
- To help : `nginx -h`
- Use `sudo lsof -i TCP:80` to see what application is listening on port 80
- Check nginx status: `sudo systemctl status nginx`
- Check nginx runnig: `ps -ef | grep nginx`

### log
- `sudo tail -f /var/log/nginx/access.log`
- `sudo ls -l /var/log/nginx`