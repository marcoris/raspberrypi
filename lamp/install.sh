#!/bin/bash

echo "New installation (y/n)?"
read ANSWER

echo "Set the ip address to connect over a lan cable (0 for not setting):"
read IP

sudo apt-get update

if [[ "$ANSWER" != "${ANSWER#[Yy]}" ]]; then
    sudo apt-get update && sudo apt-get install vsftpd apache2 php mariadb-server-10.0 -y && sudo cp vsftpd.conf /etc/vsftpd.conf && sudo mkdir -p /home/pi/FTP && sudo chmod a-w /home/pi/FTP && sudo service vsftpd restart && sudo cp cmdline.txt /boot/cmdline.txt;
fi

if [[ $IP -ne 0 ]]; then
  sudo echo "ip=${IP}" >> /boot/cmdline.txt
fi
