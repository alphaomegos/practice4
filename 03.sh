#!/bin/bash

#This script creates calendar-like folders with random files

mkdir -p 20{10..17}/{01..12}

for i in {2010..2017}
	do cd $i 
	for j in {01..12}
		do cd $j
		for h in {01..10}
			do touch 0$h.txt
			echo 'file0'$h > 0$h.txt
			done
			cd ..
		done
		cd ..
	done

# don't forget chmod +x 03.sh
#otherwise it will not work
