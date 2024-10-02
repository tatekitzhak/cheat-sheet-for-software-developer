# Start or stop services
Each Bitnami stack includes a control script that lets you easily stop, start and restart services.

Obtain the status of a service:

- `sudo /opt/bitnami/ctlscript.sh status`
Call it without any service name arguments to start all services:

- `sudo /opt/bitnami/ctlscript.sh start`
Or use it to restart a single service, such as Apache only, by passing the service name as argument:

- `sudo /opt/bitnami/ctlscript.sh status/restart/stop/start apache`
Use this script to stop all services:

- `sudo /opt/bitnami/ctlscript.sh stop`
Restart the services by running the script without any arguments:

- `sudo /opt/bitnami/ctlscript.sh restart`

# Mysql
- `sudo /opt/bitnami/ctlscript.sh restart mysql`
- `sudo /opt/bitnami/ctlscript.sh status mysql`
- `sudo /opt/bitnami/ctlscript.sh stop mysql`
- `sudo /opt/bitnami/ctlscript.sh start mysql`

# php-fpm:
- `sudo /opt/bitnami/ctlscript.sh restart php-fpm`
- `sudo /opt/bitnami/ctlscript.sh status php-fpm`
- `sudo /opt/bitnami/ctlscript.sh stop/stop php-fpm`


# List all Lightsail instances in a Region
- `aws lightsail get-instances --region us-east-2 --query 'instances[].{name:name,createdAt:createdAt,blueprintId:blueprintId,blueprintName:blueprintName,publicIpAddress:publicIpAddress,InstanceID:supportCode}' --output table`