#!/bin/bash

# Update the apt package list.
sudo apt-fast update -y

sudo add-apt-repository -y ppa:neovim-ppa/unstable
sudo apt-fast update -y
sudo apt-fast install -y neovim
