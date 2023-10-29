#!/bin/bash


echo "INSTALLING LIBS"
echo ""
apt-get update 
apt install tmux
apt install git
apt install curl
apt-get install xdotool


echo "INSTALLING PYTHON"
echo ""
apt-get install python3

echo "TMUX PLUGIN MANAGER"
echo ""
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

echo ""
echo "MOVING CONF FILE"
echo ""
python3 moveconf.py

echo "INSTALLING ZSH AND POWERSHELL"
echo ""
apt install zsh
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc
zsh
zsh <<EOF
sleep 1
xdotool key y
sleep 1
xdotool key y
sleep 1
xdotool key n
xdotool key n
xdotool key n
EOF 

echo "INSTALLATION COMPLETED!"


#!/bin/bash
echo "hie"
zsh # switching to zsh shell

#!/bin/zsh
echo "hii"