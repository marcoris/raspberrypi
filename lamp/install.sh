#!/bin/bash

echo "set the ip address to connect over a lan cable (0 for not setting):"
read IP

sudo apt-get update && sudo apt-get install vsftpd apache2 php mariadb-server-10.0 -y && sudo cp vsftpd.conf /etc/vsftpd.conf && sudo mkdir -p /home/pi/FTP && sudo chmod a-w /home/pi/FTP && sudo service vsftpd restart && sudo cp cmdline.txt /boot/cmdline.txt;

if [ $IP -gt 0 ]
then
  sudo echo "ip=$IP" >> /boot/cmdline.txt
fi
