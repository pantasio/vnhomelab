#!/bin/bash

# Install Fish shell
sudo apt-add-repository ppa:fish-shell/release-3 -y
sudo apt-fast update -y
sudo apt-fast install -y fish

## install oh-my-fish and theme bobthefish  
curl -L https://get.oh-my.fish > install-ohmyfish
sleep 1

fish install-ohmyfish --path=~/.local/share/omf --config=~/.config/omf
sleep 1

chsh -s /usr/bin/fish
sleep 1

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
