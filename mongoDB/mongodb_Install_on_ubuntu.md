# How To Install MongoDB on Ubuntu
- https://www.fosstechnix.com/how-to-install-mongodb-on-ubuntu-22-04-lts/#google_vignette
- https://www.cherryservers.com/blog/install-mongodb-ubuntu-22-04
- https://www.hostinger.com/tutorials/how-to-install-mongodb-on-ubuntu/
- https://www.knowledgehut.com/blog/web-development/install-mongodb-on-ubuntu
- https://aster.cloud/2022/09/06/how-to-install-and-configure-mongodb-community-on-ubuntu-20-04/#google_vignette

# How to Uninstall MongoDB on Ubuntu
- https://webhostinggeeks.com/howto/how-to-uninstall-mongodb-on-ubuntu/

Setup and Installing:
1. `sudo apt update`
2. `sudo apt install wget curl gnupg2 software-properties-common apt-transport-https ca-certificates lsb-release`
3. `curl -fsSL https://www.mongodb.org/static/pgp/server-6.0.asc|sudo gpg --dearmor -o /etc/apt/trusted.gpg.d/mongodb-6.gpg`
4. `echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu $(lsb_release -cs)/mongodb-org/6.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-6.0.list`
5. `sudo apt update`
6. `sudo systemctl enable --now mongod`
7. `mongod --version`
#############################
# Changing the MongoDB Port #
#############################
## Changing the default port of MongoDB provides a first line of defence against unwanted intruders. 

1. `sudo vim /etc/mongod.conf`
- ### network interfaces
net:
  port: 27017
  bindIp: 127.0.0.1
In this example change the port to 28080.
2. `sudo service mongod restart`
3. To connect to the MongoDB use: `mongosh --port <new-mongodb-port>`
## Starting/Stopping mongodb-community
-----------------------------------
- `sudo systemctl restart mongod`
- `sudo systemctl stop mongod`
- `sudo systemctl daemon-reload`
- `sudo systemctl start mongod`