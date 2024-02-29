#!/bin/bash

# This script will give you the information of a file

if [ $# -eq 0 ]
then
	echo "Usage: $0 [File]"
	exit
fi


OWNER=`ls -la $1 | awk '{print $3}'`
SIZE=`ls -la $1 | awk '{print $5}'`
MONTH=`ls -la $1 | awk '{print $6 " " $7}'`
TIME=`ls -la $1 | awk '{print $8}'`


echo
echo "File name: $1"
echo
echo "Owner: $OWNER"
echo "Size:  $SIZE byte"
echo "This file was created on $MONTH at $TIME"
echo
echo "Permissions"

# Checking readable permissions.

if [ -r $1 ]
then
	echo "READABLE=TRUE"
else
	echo "READABLE=FALSE"
fi


# Checking writable  permissions.

if [ -w $1 ]
then
        echo "WRITABLE=TRUE"
else
        echo "WRITABLE=FALSE"
fi

# Checking for executable permissions.

if [ -x $1 ]
then
        echo "EXECUTABLE=TRUE"
else
        echo "EXECUTABLE=FALSE"
fi


