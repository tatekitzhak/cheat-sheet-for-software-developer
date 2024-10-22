
## How do I execute a Docker compose.yml file?
- `docker compose up`
- `docker-compose -f {compose_file_name.yml} up -d`
- We can avoid `-f` if your filename is docker-compose.yml
- Docker `Compose creates a default network` for the project.
- It will be create a `container` 
- And `create a default network`

## Shut down the containers

- `docker compose down`
### The tool will stop and `remove all containers, networks, volumes`.
- `docker-compose -f {compose_file_name.yml} down` 
- It will shut down the `containers` 
- And remove the `network`
- And `volumes` created for the project.

## Build the images
- `docker compose build`
- the tool will build the images defined in your docker-compose.yml file. 

## docker compose start / stop
- `docker compose start/stop`
- Only if a container is exist