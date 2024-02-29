#!/bin/bash

#Shell script that process images.

if [ $# -eq 0 ]
then
	echo "Usage $0 [File-1] [File2] ... [File-n]"
	exit
fi

for i in $@
do
	if [ -f $i ]
	then
		file_name=`echo $i | sed 's/[.].*//'`	
		convert $i $file_name.png
	else
		echo "ERROR: $i is not a regular file..."
	fi
done

echo "[+] File conversion complited..."


