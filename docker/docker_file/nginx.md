## Start Nginx image

```
FROM nginx:latest

# WORKDIR /

RUN echo "Start Nginx image" 

RUN apt-get -y update && \
    apt-get -y install apt-utils && \
    apt-get -y upgrade && \
    apt-get -y clean

# I ALSO WANT TO INSTALL CERBOT FOR LATER USE (in my entrypoint file)

RUN apt-get -y install python-certbot-nginx -t stretch-backports

# COPY ./something ./tothisimage 
# COPY ./something ./tothisimage 
# COPY ./something ./tothisimage 
# COPY ./something ./tothisimage 

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["bash", "/entrypoint.sh"]
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