## How To Install MongoDB on AWS EC2 - Amazon Linux
- 
- 

# Once the EC2 instance state turns to “Running”
Setup and Installing:
1. Create a `/etc/yum.repos.d/mongodb-org-6.0.repo` file so that you can install MongoDB directly using `yum`
2. `sudo vim /etc/yum.repos.d/mongodb-org-6.0.repo`
`-hit I to enter INSERT mode, copy and paste the following[mongodb-org-6.0]`
`name=MongoDB Repository`
`baseurl=https://repo.mongodb.org/yum/amazon/2/mongodb-org/6.0/x86_64/`
`gpgcheck=1`
`enabled=1`
`gpgkey=https://www.mongodb.org/static/pgp/server-6.0.asc`
` -hit esc key to exit INSERT mode, and run :wq to save the file.`

3. Run the following command to install the latest MongoDB: `sudo yum install -y mongodb-org`
4. Run the command below to verify MongoDB has been installed correctly: `mongod --version`
- We have successfully set up MongoDB in the EC2 instance.
5. To start the MongoDB run the following command: `sudo systemctl start mongod`
6. To verify the MongoDB has been started successfully, issue the following command: `sudo systemctl status mongod`
- That is great, the MongoDB has been activated.
3. Let’s go into the MongoDB shell. Issue the command below: `mongosh`


## Indexes
- db.Collection_name.getIndexes()
### Create an index using createIndex() method:
- db.Collection_name.createIndex( Key and Index Type, Options)

