#!/bin/bash

sudo apt-get update && sudo apt-get install vsftpd apache2 php mariadb-server-10.0 -y && sudo cp vsftpd.conf /etc/vsftpd.conf && sudo mkdir -p /home/pi/FTP && sudo chmod a-w /home/pi/FTP && sudo service vsftpd restart
