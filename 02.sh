#!/bin/bash

#This script caches and reports failed authentications

AUTHLOG=/var/log/auth.log

tail -0f $AUTHLOG | while read LINE
	do echo $LINE | grep -e FAILED
	done


# don't forget to chmod +x 02.sh
# otherwise it will not work
