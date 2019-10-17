#!/bin/bash

# Update the apt package list.
apt-get update -y
apt-get install -y software-properties-common git curl wget

add-apt-repository ppa:apt-fast/stable -y
apt-get update -y
apt-get install apt-fast -y

##############################################
# APT_FAST 
# nano /etc/apt-fast.conf
#MIRRORS=( ‘http://archive.ubuntu.com/ubuntu, http://de.archive.ubuntu.com/ubuntu’)
##############################################
# MIRRORS=( ‘http://opensource.xtdv.net/ubuntu, http://mirrors.nhanhoa.com/ubuntu, http://mirror.ehost.vn/ubuntu, http://mirror.0x.sg/ubuntu, http://free.nchc.org.tw/ubuntu, http://mirror.xtom.com.hk/ubuntu, http://archive.ubuntu.com/ubuntu’)

wget https://raw.githubusercontent.com/pantasio/vnhomelab/master/WSL/apt-fast.conf
mv ./apt-fast.conf /etc/apt-fast.conf
