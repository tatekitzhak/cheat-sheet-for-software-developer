- https://www.middlewareinventory.com/blog/docker-nodejs-example/
- https://betterstack.com/community/guides/scaling-nodejs/dockerize-nodejs/
- https://bun.sh/guides/ecosystem/docker

1. The command we used to build the Image from the Dockerfile is
- `docker build -t <name of directory> .`
- `docker images` To validate if your image has created 
- `docker run -d -p 3000:3000 <name of directory>`
OR
- `docker container run -it -p 8081:8080 -d --name nodejsdocker saravak/dockernodejs`
Here:
- -it  -  This flag sets the container in Interactive mode and allocate a Dedicated TTY id for later SSHing
- -d -  This flag sets the container to run in the background.
- -p 8081:8080 - Port Forwarding Between Host and the Container. Right to the colon is a container and Left to the colon is Host. 8081 is the Host and 8080 is the container Port.
- nodejsdocker - Name of the container we are starting ( Replacement of Container ID)
- saravak/dockernodejs - The name of the image from which we are going to create a Container
# monitoring the Container 

- `docker container list` # list the containers created
- `docker container ls -a`  #to list the containers including not running containers
- `docker ps`    #to list the running container
- `docker info` #docker engine status including container running/paused/stopped containers list
- docker container stats <containername/id> #prints the CPU and MEM usage data of the container name
- docker container stats #prints the CPU and MEM usage of all running containers
- docker container top <containername/id> #executes the top command in the container specified, fails if the specified container is not running

# SSH into your container ( Not actually SSH ) 
- `docker exec -it b2e3a314f3ac /bin/sh` 
OR
- `docker container exec -it nodejsdocker "/bin/sh"`

# How to remove/delete the container

- `docker container rm <containername/id>` # Remove the Container 

# How to remove/delete the image

- `docker container rmi <imagename/imageid>` # Remove the image
# How to view the logs of the running container

- `docker container logs <containername/id>` # to view the logs of the container