#!/bin/bash

git clone https://github.com/Homebrew/brew ~/.linuxbrew/Homebrew
mkdir ~/.linuxbrew/bin
ln -s ../Homebrew/bin/brew ~/.linuxbrew/bin
set -U fish_user_paths /home/panbuntu/.linuxbrew/bin $fish_user_paths
