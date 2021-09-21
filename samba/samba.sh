#!/bin/bash

echo "Install samba-server (y/n)?"
read ANSWER

if [[ "$ANSWER" != "${ANSWER#[Yy]}" ]]; then
    sudo apt-get update && sudo apt-get install samba samba-common smbclient && sudo mv /etc/samba/smb.conf /etc/samba/smb.conf_alt && sudo mv ./smb.conf /etc/samba/smb.conf && sudo service smbd restart && sudo service nmbd restart && sudo mkdir /home/shares && sudo mkdir /home/shares/test && sudo chown root:root /home/shares/test/ && sudo chmod 777 /home/shares/test/ && sudo mkdir /home/shares/users && sudo chown root:users /home/shares/users/ && sudo chmod 770 /home/shares/users/ && sudo mkdir /home/shares/pi && sudo chown pi:pi /home/shares/pi/ && sudo chmod 700 /home/shares/pi/ && sudo smbpasswd -a pi
fi
