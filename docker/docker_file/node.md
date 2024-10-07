## Start Nginx image

```
FROM node:latest

# Change the working directory on the Docker image to /app
WORKDIR /app

RUN echo "Start node image" 

RUN apt -y update && \
    apt -y install vim && \
    apt -y upgrade && \
    apt -y clean

# I ALSO WANT TO INSTALL CERBOT FOR LATER USE (in my entrypoint file)

# COPY ./something ./tothisimage 
# COPY ./something ./tothisimage 
# COPY ./something ./tothisimage 

# Copy package.json and package-lock.json to the /app directory
COPY package.json package-lock.json ./

# Install dependencies
RUN npm install

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["bash", "/entrypoint.sh"]

# Expose application port
EXPOSE 3000

# Start the application
CMD ["npm", "start"]
```

- entrypoint.sh

```
echo "in entrypoint"

# I want to run some commands here... 

# After I want to run nginx normally....

nginx -t && service nginx reload

echo "after reload"
```

- output:
```
in entrypoint
nginx: the configuration file /etc/nginx/nginx.conf syntax is ok
nginx: configuration file /etc/nginx/nginx.conf test is successful
Restarting nginx: nginx.
after reload
```