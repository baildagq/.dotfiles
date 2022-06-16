#!/bin/bash

set -e errexit

# git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
# ~/.tmux/plugins/tpm/bin/install_plugins

# rm -rf ~/.oh-my-zsh
# sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions  
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting 
mv ~/.zshrc ~/.zshrc.back
ln -s ~/.dotfiles/.zshrc ~/.zshrc
