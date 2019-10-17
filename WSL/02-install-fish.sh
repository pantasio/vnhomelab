#!/bin/bash

# Update the apt package list.
sudo apt-fast update -y
sudo apt-fast install -y software-properties-common

# Install Fish shell
sudo apt-add-repository ppa:fish-shell/release-3 -y
sudo apt-fast update -y
sudo apt-fast install -y fish 

chsh -s /usr/bin/fish

## install oh-my-fish and theme batman
curl -L https://get.oh-my.fish > install-ohmyfish
fish install-ohmyfish --path=~/.local/share/omf --config=~/.config/omf
chsh -s /usr/bin/fish

omf install bobthefish

