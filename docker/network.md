
- `docker inspect [network_name]`
- `docker network connect [network_name] [container_name]`

## Connect a container to a network when it starts
- ```
    docker container run -d 
    --name container_name 
    --network network_name 
    image_name ```
# Pingping Docker container from another container
## Test Connectivity:
- `docker container exec -it [container1] ping [container2]`

