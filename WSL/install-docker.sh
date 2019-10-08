#!/bin/bash

#This scriprt to install docker on ubuntu-18.04 WSL

# Update the apt package list.
sudo apt-get update -y

# Install Docker's package dependencies.
sudo apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common

# Download and add Docker's official public PGP key.
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# Verify the fingerprint.
sudo apt-key fingerprint 0EBFCD88

# Add the `stable` channel's Docker upstream repository.
#
# If you want to live on the edge, you can change "stable" below to "test" or
# "nightly". I highly recommend sticking with stable!
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

# Update the apt package list (for the new apt repo).
sudo apt-get update -y

# Install the latest version of Docker CE.
sudo apt-get install -y docker-ce

# Allow your user to access the Docker CLI without needing root access.
sudo usermod -aG docker $USER


# Install Docker Compose

# Install Python and PIP.
sudo apt-get install -y python python-pip
# Install Docker Compose into your user's home directory.
pip install --user docker-compose

# Connect to a remote Docker daemon with this 1 liner ( Docker Desktop for Windows)
echo "export DOCKER_HOST=tcp://localhost:2375" >> ~/.bashrc && source ~/.bashrc

# make sure $HOME/.local/bin is set on your WSL $PATH
echo 'export PATH="$PATH:$HOME/.local/bin"' >> ~/.profile && source ~/.profile

# Install Fish shell
sudo apt-add-repository ppa:fish-shell/release-3 -y
sudo apt-get update
sudo apt-get install fish -y

chsh -s /usr/bin/fish

## install oh-my-fish and theme batman
curl -L https://get.oh-my.fish > install-ohmyfish
fish install-ohmyfish --path=~/.local/share/omf --config=~/.config/omf
chsh -s /usr/bin/fish

omf install bobthefish

#Intall Tmux
sudo apt-get install tmux -y

#Install Nvim
sudo apt-get install neovim -y 

