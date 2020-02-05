#!/bin/bash
#####################################
# Author: stout                     #
# mail: 2817253603@qq.com           #
# Created Time: 2019-12-14 02:22:13 #
#####################################

# pacman
sudo pacman -Syyu
sudo pacman -Su yay git vim zsh tmux ncurses-* ### very important!!!!! solve tmux problem
sudo pacman -Su alacritty ranger lxappearence zathura zathura-pdf-poppler nodejs npm yarn ruby-rouge ripgrep neovim ctags wqy-zenhei wqy-microhei i3 dunst compton variety brightnessctl code
sudo pacman -Su fcitx fcitx-configtool fcitx-googlepinyin fcitx-libpinyin fcitx-cloudpinyin yay the_silver_searcher python-pycodestyle flameshot polybar openvpn openssh neofetch polkit rofi
sudo pacman -Su dolphin nerd-fonts-noto-sans-mono nerd-fonts-terminus ttf-nerd-fonts-symbols  typora tldr tig keynav arandr feh nerd-fonts-hack zip unzip network-manager-applet
sudo pacman -Su mendeleydesktop-bundled vsftpd tree google-chrome cmake go go-tools calibre peek
# wait for assure
sudo pacman -Su paraview

# After reboot
# add google input
# sudo usermod qiqiang -a -G video
