- https://www.middlewareinventory.com/blog/docker-nodejs-example/
- https://betterstack.com/community/guides/scaling-nodejs/dockerize-nodejs/
- https://bun.sh/guides/ecosystem/docker

## Start the docker on macOS
- `open -a Docker`

## The command we used to build the Image from the Dockerfile is

- `docker build . -t <new_image_name> `
- `-f` or `-file`: This option can be used to specify a different Dockerfile name or location if it is not named "Dockerfile." In this example, the image will be built using the Dockerfile named "ProductionDockerfile" in the current directory.
- OR
- `docker build . -t <new_image_name:version_num>`

- `docker images` To validate if your image has created 

# 
- `docker container run --name [container_instance_name] -it -p [container_port]:[app_port] -d [image_name]`
OR
- 
```
docker container run -d \
    --name container_my_first_nginx -it \
    -p 5006:80 \
    my_first_nginx
```

OR
- ` docker container run -d --rm --name [container_instance_name] -it -p [container_port]:[app_port] [image_name]`
- --rm : that meaning remove a container after closed.
OR
- `docker run -d -p 3000:3000 <name of directory>`
OR
- `docker container run -it -p 8081:8080 -d --name nodejsdocker saravak/dockernodejs`
Here:
- -it  -  This flag sets the container in Interactive mode and allocate a Dedicated TTY id for later SSHing
- -d -  This flag sets the container to run in the background.
- -p 8081:8080 - Port Forwarding Between Host and the Container. Right to the colon is a container and Left to the colon is Host. 8081 is the Host and 8080 is the container Port.
- nodejsdocker - Name of the container we are starting ( Replacement of Container ID)
- saravak/dockernodejs - The name of the image from which we are going to create a Container

```
docker run -d -it --rm -e MONGO_USERNAME=ran -e MONGO_PASSWORD=your_password -e MONGO_PORT=27017 -e MONGO_DB=mongo_db_name -p 3000:3000 --name nodejs_webap_environment_variables nodejs_webapp_env_var

```

docker run -d -it \
-e MONGO_USERNAME=ran \
-p 3080:3000 \
--name nodejs_webap_environment_variables_test \
node-webapp
# monitoring the Container 

- `docker container list` # list the containers created
- `docker container ls -a`  #to list the containers including not running containers
- `docker ps`    #to list the running container
- `docker info` #docker engine status including container running/paused/stopped containers list
- docker container stats <containername/id> #prints the CPU and MEM usage data of the container name
- docker container stats #prints the CPU and MEM usage of all running containers
- docker container top <containername/id> #executes the top command in the container specified, fails if the specified container is not running

# SSH into your container ( Not actually SSH ) 
- `docker exec -it [container_id_or_name] /bin/sh` 
OR
- `docker exec -it c8e2f1dc95d3 sh`
- `docker container exec -it nodejsdocker "/bin/sh"`

# How to remove/delete the container

- `docker container rm <containername/id>` # Remove the Container 

# How to remove/delete the image

- `docker container rmi <imagename/imageid>` # Remove the image
# How to view the logs of the running container

- `docker container logs <containername/id>` # to view the logs of the container