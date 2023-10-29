echo "INSTALLING LIBS"
echo ""
apt-get update 
apt install tmux
apt install git
apt install curl

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
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
python3 newtheme.py
zsh 

