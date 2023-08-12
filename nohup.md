## NOHUP Tools

- `ssh -i ~/.ssh/amazon_linux_mongodb02.pem ec2-user@18.222.200.12 "cd /home/ec2-user/berry-react-mui-redux && \$(nohup npm run start> /dev/null 2>&1 &) " `

### 

echo "Restart client in background on instance"
ssh -i ~/.ssh/ran.pem ec2-user@18.117.15.244 "cd /home/ec2-user/site/audio_web_application/client && ((ps aux  | grep webpack-dev-server | grep -v grep | awk '{print \$2}' | xargs kill -9 ) || (echo 'not running') ) &&  \$(NODE_ENV=production nohup npm run start_prod > /dev/null 2>&1 &) "

### log
- 

### 
- 


