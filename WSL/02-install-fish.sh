#!/bin/bash

# Install Fish shell
sudo apt-add-repository ppa:fish-shell/release-3 -y
sudo apt-fast update -y
sudo apt-fast install -y fish

chsh -s /usr/bin/fish

## install oh-my-fish and theme batman
curl -L https://get.oh-my.fish > install-ohmyfish
fish install-ohmyfish --path=~/.local/share/omf --config=~/.config/omf
chsh -s /usr/bin/fish

## Install theme fish [bobthefish]
clear
echo "########"
echo "          Install Fish DONE."
echo "          Now we Install bobthefish theme for fishshell."
echo "          Pls run command:"
echo ""
echo "          omf install bobthefish"
echo ""
echo "########"

## Install Autocomplte
#Run in fish
#```
#fish_update_completions
#```
