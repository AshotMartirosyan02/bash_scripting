#!/bin/bash

# This script will gather information from employess and store it into csv file.

read -p "Enter your name: " NAME
read -p "Enter yout employee Id: " ID
read -p "Enter your department: " DEPARTMENT
read -p "Enter your gender: " GENDER

INFO="${NAME}\t${ID}\t${DEPARTMENT}\t${GENDER}"
read -p "Do you have given the correct information [y/n]" INPUT

case "$INPUT" in
	n | N )
	exit
	;;
	Y | y )	
		echo -e "$INFO" >> employee_data.csv
		;;
	* )
	exit
	;;
esac

echo "Your data have been store succsessfully"
