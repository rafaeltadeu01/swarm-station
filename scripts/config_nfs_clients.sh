#!/bin/bash
sudo apt install nfs-common -y
sudo mkdir -p /nfs/storage
sudo mount 192.168.56.20:/var/nfs/storage /nfs/storage
df -h
sudo echo "192.168.56.20:/var/nfs/storage    /nfs/storage   nfs auto,nofail,noatime,nolock,intr,tcp,actimeo=1800 0 0" >> /etc/fstab