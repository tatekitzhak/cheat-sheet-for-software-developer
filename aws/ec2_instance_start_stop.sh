#!/bin/bash

# Start EC2 instance
### Guide
# 
###

# Regular Colors
Black='\033[0;30m'        # Black
RED='\033[0;31m'          # Red
Green='\033[0;32m'        # Green
Yellow='\033[0;33m'       # Yellow
Blue='\033[0;34m'         # Blue
Purple='\033[0;35m'       # Purple
Cyan='\033[0;36m'         # Cyan
ENDCOLOR='\033[0;37m'        # White

function ec2_instance_display_table (){

	aws ec2 describe-instances \
    --query "Reservations[*].Instances[*].{ \
    InstanceId:InstanceId, \
    PublicIP:PublicIpAddress, \
    Type:InstanceType, \
    Name:Tags[?Key=='Name']|[0].Value, \
    Status:State.Name,VpcId:VpcId }" \
    --filters "Name=instance-state-name,Values=*" \
    "Name=tag:Name,Values='*'"  \
    --output table
}

function ec2_instance_start_stop () {

	instance_status="$@"

	echo "instance_status: ${instance_status}"

	read -p "Please enter a Instance Id: " instance_id

    echo -e "${Green} A params from user: ${instance_id} ${ENDCOLOR}"

	read -p "You sure you wanna ${instance_status} instance? (y/n): " yn

	if [ "$yn" = y ]; then

        aws ec2 ${instance_status}-instances --instance-ids ${instance_id}
       
    else
        echo -e "${RED} EC2 instance is not connected ${ENDCOLOR}"
    fi

}

function start_ec2_instance () {

    ec2_instance_display_table

    instance_status="$@"

    echo "${Green}Instance status input from user: ${instance_status} ${ENDCOLOR}"


    if [[ "$instance_status" == "start" ]]; then

	   ec2_instance_start_stop $instance_status

	else [[ "$instance_status" == "stop" ]]; then
	   
	   ec2_instance_start_stop $instance_status
	fi

}

start_ec2_instance $1
