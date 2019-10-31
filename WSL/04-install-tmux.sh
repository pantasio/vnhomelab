#!/bin/bash

# Update the apt package list.
sudo apt-fast update -y

sudo apt-fast install -y wget tar libevent-dev libncurses-dev
sudoapt-fast install -y ninja-build gettext libtool libtool-bin autoconf automake cmake g++ pkg-config unzip gawk

wget https://github.com/tmux/tmux/releases/download/3.0/tmux-3.0-rc5.tar.gz
tar xf tmux-3.0-rc5.tar.gz
rm -f tmux-3.0-rc5.tar.gz

cd tmux-3.0-rc5
./configure
make
make install
cd ~
rm -rf /usr/local/src/tmux-\*
mv tmux-3.0-rc5 /usr/local/src

