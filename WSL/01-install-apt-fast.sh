#!/bin/bash

# Update the apt package list.
sudo apt-get update -y

sudo apt-get install -y software-properties-common

add-apt-repository ppa:apt-fast/stable -y
apt-get update -y
apt-get install apt-fast -y

##############################################
# APT_FAST
#MIRRORS=( ‘http://archive.ubuntu.com/ubuntu, http://de.archive.ubuntu.com/ubuntu’)
##############################################

# MIRRORS=( ‘http://opensource.xtdv.net/ubuntu, http://mirrors.nhanhoa.com/ubuntu, http://mirror.ehost.vn/ubuntu, http://mirror.0x.sg/ubuntu, http://free.nchc.org.tw/ubuntu, http://mirror.xtom.com.hk/ubuntu, http://archive.ubuntu.com/ubuntu’)

