#!/bin/bash

add-apt-repository ppa:apt-fast/stable -y
apt-get update -y
apt-get install apt-fast -y

##############################################
# APT_FAST
# nano /etc/apt-fast.conf
#MIRRORS=( ‘http://archive.ubuntu.com/ubuntu, http://de.archive.ubuntu.com/ubuntu’)
##############################################
# MIRRORS=( ‘http://opensource.xtdv.net/ubuntu, http://mirrors.nhanhoa.com/ubuntu, http://mirror.ehost.vn/ubuntu, http://mirror.0x.sg/ubuntu, http://free.nchc.org.tw/ubuntu, http://mirror.xtom.com.hk/ubuntu, http://archive.ubuntu.com/ubuntu’)
clear
echo "#########################"
echo "apt-fast.conf file"
sleep 3

wget https://raw.githubusercontent.com/pantasio/vnhomelab/master/WSL/apt-fast.conf
sudo mv ./apt-fast.conf /etc/apt-fast.conf

echo "#########################"
echo "DONE, apt-fast Install successed"
