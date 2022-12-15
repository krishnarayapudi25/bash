#!/bin/bash
#######################################################################################
#Script Name    :ec2.sh
#Description    :create ec2 instance
#Author         :krishna sai
#Email          :krishnarayapudi25@gmail.com
#License       : GNU GPL-3
#######################################################################################

#!/bin/bash

# Set the name of the EC2 instance
read -p "ENTER INSTANCE NAME:" INSTANCE_NAME

# Set the region for the EC2 instance
read -p "ENTER REGION:" REGION

# Set the instance type for the EC2 instance
read -p "INSTANCE TYPE:" INSTANCE_TYPE

# Set the AMI ID for the EC2 instance

read -p "ENTER IMAGE ID:" AMI_ID


# Create the EC2 instance
aws ec2 run-instances \
  --image-id $AMI_ID \
  --instance-type $INSTANCE_TYPE \
  --region $REGION \
  --tag-specifications 'ResourceType=instance,Tags=[{Key=Name,Value='$INSTANCE_NAME'}]'
