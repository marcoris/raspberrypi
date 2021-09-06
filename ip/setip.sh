#!/bin/bash

echo "Set ip address (0 = cancel)"
read IP

if [[ "$IP" == 0]]; then
    echo "Cancel setting ip address..."
else
    echo " ip=${IP}" >> /boot/cmdline.txt
fi