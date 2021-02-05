#!/bin/bash

#This script counts folders size in home direcories

for user in $(cut -d: -f1 /etc/passwd);
	do du -sh -BM /home/$user > $user.txt 2>/dev/null
	done

cat *.txt > sizelog.txt


#don't forget to chmod +x 04.sh
#otherwise it will not work
