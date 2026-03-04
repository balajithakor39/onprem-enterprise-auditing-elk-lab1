#!/bin/bash

sudo apt install cifs-utils -y

sudo mkdir /mnt/nas

sudo mount -t cifs //192.168.1.20/shared /mnt/nas \
-o username=admin,password=password
