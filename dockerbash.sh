echo "INSTALLING LIBS\n"
apt-get update 
apt install tmux
apt install git
apt install curl

echo "INSTALLING PYTHON\n"
apt-get install python3

echo "TMUX PLUGIN MANAGER\n"
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

echo "MOVING CONF FILE\n"
python3 moveconf.py

echo "INSTALLING ZSH AND POWERSHELL \n"
apt instal zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
python3 newtheme.py
zsh 

