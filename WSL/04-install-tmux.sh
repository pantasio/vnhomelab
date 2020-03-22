#!/bin/bash

# Update the apt package list.
sudo apt-fast update -y

sudo apt-fast install -y wget tar libevent-dev libncurses-dev
sudo apt-fast install -y ninja-build gettext libtool libtool-bin autoconf automake cmake g++ pkg-config unzip gawk

wget https://github.com/tmux/tmux/releases/download/3.1/tmux-3.1-rc3.tar.gz
tar xf tmux-3.1-rc3.tar.gz
rm -f tmux-3.1-rc3.tar.gz

cd tmux-3.1-rc3
./configure
make
make install
cd ~
rm -rf /usr/local/src/tmux-\*
sudo mv tmux-3.1-rc3 /usr/local/src

