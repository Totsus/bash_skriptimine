#!/bin/bash
PATH=$PATH:/usr/sbin;
parool=$ (join kasutajad paroolid)
echo "$parool"

# PATH=$PATH:/usr/sbin;
#       useradd $parool | chpasswd < paroolid
