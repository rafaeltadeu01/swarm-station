#!/bin/bash
sudo apt install nfs-kernel-server -y
sudo mkdir /var/nfs/storage -p
sudo chown vagrant:vagrant /var/nfs/storage
sudo touch /etc/exports
sudo echo "/var/nfs/storage    192.168.56.10(rw,sync,no_subtree_check)" >> /etc/exports
sudo echo "/var/nfs/storage    192.168.56.11(rw,sync,no_subtree_check)" >> /etc/exports
sudo echo "/var/nfs/storage    192.168.56.12(rw,sync,no_subtree_check)" >> /etc/exports
sudo systemctl restart nfs-kernel-server