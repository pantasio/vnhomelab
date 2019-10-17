#!/bin/bash

# Update the apt package list.
sudo apt-fast update -y

sudo apt-fast install -y software-properties-common

add-apt-repository -y ppa:neovim-ppa/unstable
apt-fast update -y
apt-fast install -y neovim 
