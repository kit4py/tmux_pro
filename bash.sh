echo "INSTALLING LIBS\n"
sudo apt-get update 
sudo apt install tmux
sudo apt install git
sudo apt install curl

echo "INSTALLING PYTHON\n"
sudo apt-get install python3

echo "TMUX PLUGIN MANAGER\n"
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

echo "MOVING CONF FILE\n"
python3 moveconf.py

echo "INSTALLING ZSH AND POWERSHELL \n"
sudo apt install zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
python3 newtheme.py
zsh 

