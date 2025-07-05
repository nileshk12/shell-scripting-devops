#!/bin/bash
#######################
#Ask the user to enter a Linux service name (e.g., nginx, docker, sshd).
#Use systemctl to check if the service is active/running.
#If it's running, print:"Service <name> is running"
#If it's not running or not found, print:"Service <name> is NOT running or does not exist"
###########################
read -p "Enter Linux service name:" servicename
status=$(systemctl is-active "$servicename")
if [ "$status" = "active" ]; then
       echo "Service '$servicename' is active"
else
 	echo "Service '$servicename' not found or does not exist"
fi 


