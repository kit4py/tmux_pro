echo "INSTALLING LIBS"
echo ""
# Update Homebrew (macOS package manager)
brew update
# Install required packages
brew install tmux git curl

echo "INSTALLING PYTHON"
echo ""
# macOS typically comes with Python pre-installed, but you can install Python 3 with brew
brew install python

echo "TMUX PLUGIN MANAGER"
echo ""
# Install Tmux Plugin Manager (tpm)
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

echo ""
echo "MOVING CONF FILE"
echo ""
# Adjust the command for moving your config file, e.g., using 'mv'
python3 moveconf.py

echo "INSTALLING ZSH AND POWERSHELL"
echo ""
# Install Zsh
brew install zsh
# Install Oh-My-Zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# Install Zsh Syntax Highlighting plugin
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
# Install Powerlevel10k theme
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
# Apply your custom theme (if 'newtheme.py' is the correct script for that)
python3 newtheme.py
# Start Zsh
zsh
