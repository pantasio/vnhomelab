#!/bin/bash

# Install Fish shell
sudo apt-add-repository ppa:fish-shell/release-3 -y
sudo apt-fast install -y fish
chsh -s /usr/bin/fish
## install oh-my-fish and theme bobthefish  
curl -L https://get.oh-my.fish > install-ohmyfish
sleep 0.1

chmod +x install-ohmyfish
fish install-ohmyfish --path=~/.local/share/omf --config=~/.config/omf
sleep 0.1


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
