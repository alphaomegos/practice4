#!/bin/bash

#This script allow to delete empty lines and capitalize everything

for file in *txt
	do
		sed -e '/^$/d' -e ' s/.*/\U&/' $file > temp
		mv temp $file
	done

