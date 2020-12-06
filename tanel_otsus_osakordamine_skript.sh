#!/bin/bash
##Kordamise skript millega tuleb korraldada linuxi Käske

rm -r praks2
echo "vana praks2 eemaldatud"
sleep 2
mkdir praks2
	echo "kataloog tehtud"
touch praks2/fail{1..12}
touch praks2/list.txt
sleep 3
	echo "failid1-12 loodud"
ls -l praks2 >> praks2/list.txt
	echo "Tanel Otsus; vto20; Tartu" >> praks2/fail1;
sleep 3
 mv praks2/fail1 praks2/minu_andmed.txt
	echo "minu_andmed.txt loodud"
	echo "vto20 Skriptimine" >> praks2/fail9;
 mv praks2/fail9 aine_andmed.txt
        echo "aine_andmed.txt loodud"
 date >> praks2/fail2
mv praks2/fail2 praks2/date.txt
        echo "date.txt loodud"
sleep 3
	echo "----------------------------------------------list2----------------------------------------" >> praks2/list.txt
ls -l praks2 >> praks2/list.txt
mv praks2/fail{3..8} /home/user/
	echo "----------------------------------------------3_list----------------------------------------" >> praks2/list.txt
ls -l praks2 >> praks2/list.txt
	echo "failid liigutatud"
sleep 3
mkdir praks2/allalaadimised
wget -P /home/user/praks2/allalaadimised http://anna.ikt.khk.ee/mihhail.karutin/avorgud/test.txt
	echo "Fail allalaetud ja salvestatud"
sleep 3
mkdir praks2/backup
mv praks2/*.txt praks2/backup
	echo "Failid ümber tõstatud backup-i"
sleep 3
	echo "----------------------------------------------backup_list----------------------------------------" >> praks2/backup/list.txt
ls -l praks2 >> praks2/backup/list.txt
touch praks2/backup/ip.txt
ip a >>praks2/backup/ip.txt
	echo "IPd salvestatud"
sleep 3
scp praks2/backup/ip.txt ssh user@192.168.16.164:/home/user/vto20/Tanel_Otsus
scp user@192.168.16.164:/home/user/vto20/a.txt praks2/backup/
	echo "Fail  allalaetud"
sleep 3
date >> praks2/backup/a.txt
mv praks2/backup/a.txt praks2/backup/a_tanel_otsus.txt
mv praks2/allalaadimised praks2/backup/
scp praks2/backup/a_tanel_otsus.txt ssh user@192.168.16.164:/home/user/vto20/Tanel_Otsus
	echo "Fail ümber nimetatud ja saadetud"
sleep 3
rm praks2/*
#rm -r /praks2/allalaadimised
sleep 3

        echo "-------------------------------------4_list----------------------------------------" >> praks2/backup/list.txt
ls -l praks2 >> praks2/backup/list.txt
 echo "Tanel Otsus" >> praks2/backup/allalaadimised/test.txt
date >> praks2/backup/allalaadimised/test.txt
echo "test.txt valmis"
sleep 3
scp praks2/backup/allalaadimised/test.txt ssh user@192.168.16.164:/home/user/vto20/Tanel_Otsus

echo "test.txt saadetud"
sleep 3
touch praks2/backup/06.07_history_tanel_otsus.txt
history 30 >> praks2/backup/06.07_history_tanel_otsus.txt
#grep praks2/backup/06.07_history_tanel_otsus.txt
echo "Kõik käsud tehtud"
sleep 3
#skripti lõpp
