#!/bin/bash
####################
#Prompts the user to enter a filename.
#Checks if the file exists.
#If it exists, print "File already exists".
#If it does not exist, create the file and print "File created".
##############################
read -p "Enter filename: " filename
if [ -e "$filename" ]; then
	echo "Filename '$filename' exists"
else
	touch "$filename"
	echo "Filename '$filename' created"
fi
