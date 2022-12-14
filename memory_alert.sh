#!/bin/bash
#######################################################################################
#Script Name    :alertmemory.sh
#Description    :send alert mail when server memory is running low
#Args           :
#Author         :krishna sai
#Email          :krishnarayapudi25@gmail.com
#License       : GNU GPL-3
#######################################################################################
## declare mail variables
##email subject
subject="Server Memory Status Alert"
##sending mail as
from="server.monitor@example.com"
## sending mail to
to="admin1@example.com"
## send carbon copy to
also_to="admin2@example.com"

alert=99

total_memory=$(free -m | grep "Mem:" | awk '{print $2}')
free_memory=$(free -m | grep "Mem:" | awk '{print $4}')

# Calculate the percentage of free memory
free_memory_percent=$(( 100 * free_memory / total_memory ))

# Print the percentage of free memory
 echo "Free memory: $free_memory_percent%"

if [ $free_memory_percent -lt $alert ]; then

        echo "running out of memory" | mail -s "Memory alert" krishnarayapudi25@gmail.com
else
     echo "has enough memory"
fi
