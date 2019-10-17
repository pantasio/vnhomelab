#!/bin/bash

# Update the apt package list.
apt-fast update -y

add-apt-repository -y ppa:neovim-ppa/unstable
apt-fast update -y
apt-fast install -y neovim 
