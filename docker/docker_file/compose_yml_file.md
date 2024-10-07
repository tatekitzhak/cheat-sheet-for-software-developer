
## How do I execute a Docker compose.yml file?
- `docker-compose -f {compose_file_name.yml} up -d`
- `docker-compose -f {compose_file_name.yml} down` - It will shut down the containers and remove the network. 
- `docker-compose -f {compose_file_name.yml} up stop`
- We can avoid `-f` if your filename is docker-compose.yml
