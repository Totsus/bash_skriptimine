#!/bin/bash
## Apache2 paigaldamine masinasse scripti abil.
##Tuleb tuvastada kas masinas  programm on olemas.

programm=$(dpkg-query -W -f='${Status}' apache2 | grep -c 'ok installed')
if  [ $programm -eq 0 ];then
	echo "Programmi paigaldus"
	apt update | apt install apache2
	echo "Programm on paigaldatud"
elif [ $programm -eq 1 ]; then
	echo "Programm on varasemalt paigaldatud"
	service apache2 start
	service apache status
fi 
