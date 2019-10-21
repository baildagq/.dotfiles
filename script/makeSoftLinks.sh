#!/bin/bash
#####################################
# Author: stout                     #
# mail: 2817253603@qq.com           #
# Created Time: 2019-07-28 18:12:36 #
#####################################


ln -s ~/.dotfiles/alacritty         ~/.config/alacritty
ln -s ~/.dotfiles/codestyle/pycodestyle       ~/.config/pycodestyle
ln -s ~/.dotfiles/codestyle/pep8       ~/.config/pep8
ln -s ~/.dotfiles/codestyle/flake8      ~/.config/flake8

ln -s ~/.dotfiles/.condarc          ~/.condarc
ln -s ~/.dotfiles/dunst             ~/.config/dunst
ln -s ~/.dotfiles/feh            ~/.config/feh

ln -s ~/.dotfiles/.gitconfig        ~/.gitconfig
ln -s ~/.dotfiles/i3                ~/.config/i3.back
ln -s ~/.dotfiles/openvpn          ~/.config/openvpn


ln -s ~/.dotfiles/pip               ~/.config/pip
ln -s ~/.dotfiles/polybar              ~/.config/polybar

ln -s ~/.dotfiles/ranger            ~/.config/ranger

ln -s ~/.dotfiles/.thinkvim.d              ~/.thinkvim.d
ln -s ~/.dotfiles/.tmux.conf        ~/.tmux.conf


ln -s ~/.dotfiles/.vim              ~/.vim

ln -s ~/.dotfiles/.xmodmap       ~/.xmodmap
ln -s ~/.dotfiles/.xprofile       ~/.xprofile
ln -s ~/.dotfiles/.Xresources       ~/.Xresources


ln -s ~/.dotfiles/zathura           ~/.config/zathura
ln -s ~/.dotfiles/zsh/.zshrc_zpl    ~/.zshrc

sudo mv /etc/X11/xorg.conf.d /etc/X11/xorg.conf.d.back
sudo ln -s ~/.dotfiles/xorg.conf.d       /etc/X11/

~/.keynavrc
