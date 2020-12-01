#!/bin/bash
## Apache2 paigaldamine masinasse scripti abil.
##Tuleb tuvastada kas masinas  programm on olemas.

programm=$(dpkg-query -W -f='${Status}' apache2 2>/dev/null | grep -c 'ok installed')
if  [ $programm -eq 0 ];then
	echo "Programmi paigaldus" #kui ei ole toimub programmi paigaldus
	apt install apache2
	echo "Programm on paigaldatud"

elif [ $programm -eq 1 ]; then
	echo "Programm on varasemalt paigaldatud" #kui programm on olemas tooimub programmi käivius ja kontroll
	systemctl start apache2.service #service apache2 start
	systemctl status apache2 #service apache2 status
fi 
