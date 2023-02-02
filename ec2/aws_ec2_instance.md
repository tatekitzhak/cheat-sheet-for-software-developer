## How to Deploy to an AWS EC2 instance with Node.js
Tutor:
- https://www.youtube.com/watch?v=7vf210p2tJg
-  sudo iptables -t nat -A PREROUTING -p tcp --dport 80 -j REDIRECT --to-ports 3100
- https://betterprogramming.pub/how-to-use-nvm-to-manage-node-js-19-and-npm-9-bc5656d52d5f#:~:text=The%20latest%20version%20of%20nvm,the%20nvm%20repository%20to%20~%2F.
- https://sumantmishra.medium.com/how-to-deploy-node-js-app-on-aws-with-github-db99758294f1

### Deploy to an AWS EC2 instance with Node.js
Setup:
1. Install Node Version Manager, Using `curl`, or `wget`, download the installation script. In the URL below make sure you replace `v0.xx.0` with the latest version of `nvm`: 
- `curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.2/install.sh | bash` <br>
- ` wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.2/install.sh | bash` <br>
2. Use NVM
- Activate nvm by typing the following at the command line: `. ~/.nvm/nvm.sh`
- After `nvm` is installed, we can use the following command to install the latest version of node.js (or specify the exact version to be installed): <br>
- `nvm install node` or `nvm install [node version]`<br>
`Downloading and installing node v19.0.0...`<br>
`Downloading https://nodejs.org/dist/v19.0.0/node-v19.0.0-darwin-x64.tar.xz...`<br>
`##################################################################################################################### 100.0%`<br>
`Checksums matched!`<br>
`Now using node v19.0.0 (npm v8.19.2)`<br>

- The above output (last line of 2) states that npm 8.19.2 is used along with node.js 19.0.0. This can be verified with the following:
`% node -v`<br>
`v19.1.0`<br>
`% npm -v`<br>
`8.19.2`<br>
- Now, have the ability to run a node application on ec2 instance server.
3. For run node applications with port num. xxxx (app.js):
- Example, Create redirect from port 80 to 8000: ` sudo iptables -t nat -A PREROUTING -p tcp --dport 80 -j REDIRECT --to-ports 8000`
Tutor:
- https://superuser.com/questions/1548372/forwarding-port-80-to-8000-doesnt-work
- https://askubuntu.com/questions/444729/redirect-port-80-to-8080-and-make-it-work-on-local-machine
- https://serverfault.com/questions/1019115/how-to-redirect-port-80-to-8080-while-keeping-8080-closed-to-the-internet
- https://gist.github.com/debashisbarman/7892a3b76a42a64f30cfa19f7d56c5b0

