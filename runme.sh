#!/bin/bash
## Init Install
mkdir ~/wsl-init-image
cd ~/wsl-init-image

wget https://raw.githubusercontent.com/pantasio/vnhomelab/master/WSL/00-init-install.sh
chmod +x 00-init-install.sh
./00-init-install.sh

echo "Init Install Done"
sleep 5
clear

### 01 apt-fast
wget https://raw.githubusercontent.com/pantasio/vnhomelab/master/WSL/01-install-apt-fast.sh
### 02 fish
wget https://raw.githubusercontent.com/pantasio/vnhomelab/master/WSL/02-install-fish.sh
### 03 Neovim
wget https://raw.githubusercontent.com/pantasio/vnhomelab/master/WSL/03-install-neovim.sh
### 04 Tmux
wget https://raw.githubusercontent.com/pantasio/vnhomelab/master/WSL/04-install-tmux.sh

chmod +x *.sh

echo "Install appt-fast"
./01-install-apt-fast.sh
sleep 5
clear
echo "apt-fast Done"

clear
echo "Install Fish"
./02-install-fish.sh



rm -rf ~/wsl-init-image
