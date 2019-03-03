#!/bin/bash
# request Bourne shell as shell for job
#$ -S /bin/bash
# Name for the script in the queuing system
#$ -N Bioinfo_workshop_script
# name of the queue you want to use
#$ -q imppc
# In order to load the environment variables and your path
# You can either use this or do a : source /etc/profile
#$ -V
# You can redirect the error output to a specific file
#$ -e /imppc/labs
# You can redirect the output to a specific file
#$ -o /imppc/labs

 
# Write your commands above

echo "My name is __________________________"

sleep 10 # Sleep for 10 seconds

echo "End of my first job"
