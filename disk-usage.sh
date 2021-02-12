#!/bin/bash  
MAX=20
EMAIL=server@127.0.0.1
PART=xvda

USE=$(df -h | grep $PART | awk '{ print $5 }' | cut -d'%' -f1)
if [ $USE -gt $MAX ]; then
	echo "Percent used: $USE" | mail -s "Running out of disk space" $EMAIL
else
        echo "Disk usage is normal"
fi
