#!/bin/bash
#####################################
# Author: stout                     #
# mail: 2817253603@qq.com           #
# Created Time: 2020-01-28 05:23:05 #
#####################################


# ================= COMMON =================
# pypi
pip3 install -i https://pypi.tuna.tsinghua.edu.cn/simple pip -U --user
pip3 config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple

# git
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

# sh
# oh-my-zsh
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions  #install zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting #install zsh-syntax-hightlighting


# npm
# gitbook
npm install -g gitbook-cli

cd ~/.dotfiles

paths=(
    '.config/alacritty'
    '.config/codestyle'
    '.config/dunst'
    '.config/feh'
    '.config/i3'
    '.config/openvpn'
    '.config/pip'
    '.config/polybar'
    '.config/ranger'
    #'.config/rofi'
    '.config/zathura'
    '.config/nvim'

    '.bashrc'
    '.condarc'
    '.gitaliases'
    '.gitconfig'
    '.keynavrc'
    '.shellconfig'
    '.tmux.conf' 
    '.vim'
    '.xmodmap'
    'xorg.conf.d'
    '.xprofile'
    '.Xresources'
    '.zshrc_omz'
    # '.zshrc_zpl'
)

for item in ${paths[*]}
do
    # dotfile exist
    if test -e $item
    then
        if test "$item" = ".zshrc_omz" -o "$item" = ".zshrc_zpl"
        then
            ln -s ~/.dotfiles/$item ~/.zshrc
        elif test "$item" = "xorg.conf.d"
        then
            if [ -e ~/$item ]
            then
                sudo mv /etc/X11/xorg.conf.d /etc/X11/xorg.conf.d.back
                sudo ln -s ~/.dotfiles/$item /etc/X11/
            fi
        else
            if [ -h ~/$item ]
            then
                rm ~/$item
            fi
            if [ -e ~/$item ]
            then
                mv ~/$item ~/$item.back 
            fi
            ln -s ~/.dotfiles/$item ~/$item
        fi
    fi
done
