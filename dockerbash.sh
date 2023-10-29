#!/bin/bash


echo "INSTALLING LIBS"
echo ""
apt-get -y update 
apt install -y tmux
apt install -y git
apt install -y curl
#apt-get install xdotool


echo "INSTALLING PYTHON"
echo ""
apt-get install -y python3

echo "TMUX PLUGIN MANAGER"
echo ""
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

echo ""
echo "MOVING CONF FILE"
echo ""
python3 moveconf.py

echo "INSTALLING ZSH AND POWERSHELL"
echo ""
apt install -y zsh
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
python3 newtheme.py
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc

# source ~/.p10k.zsh

zsh


echo "INSTALLATION COMPLETED!"
