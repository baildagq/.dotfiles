#!/bin/bash
#####################################
# Author: stout                     #
# mail: 2817253603@qq.com           #
# Created Time: 2019-12-14 02:22:13 #
#####################################

# pacman
sudo pacman -Syyu
sudo pacman -Su \
	yay\
	git\
	vim\
	zsh\
	tmux\
	ranger\
	alacritty\
	zathura\
	zathura-pdf-poppler\
	npm\
	ruby-rouge\
	ctags\
	wqy-microhei\
	variety\
	brightnessctl\
	code\
	fcitx\
	fcitx-configtool\
	fcitx-googlepinyin\
	fcitx-libpinyin\
	fcitx-cloudpinyin\
	yay\
	the_silver_searcher\
	python-pycodestyle\
	flameshot\
	polybar\
	openvpn\
	openssh\
	neofetch\
	polkit\
	rofi\
	dolphin\
	typora\
	tldr\
	tig\
	keynav\
	arandr\
	feh\
	zip\
	unzip\
	network-manager-applet\
	mendeleydesktop-bundled\
	vsftpd\
	tree\
	google-chrome\
	cmake\
	calibre\
	peek\
	goldendict\
	figlet\
	fzf\
    gcc\
	i3\
	dunst\
	compton
fontmatrix

# neovim(for thinkvim)
sudo pacman -Su neovim python-pip nodejs yarn ripgrep ctags nerd-fonts-noto-sans-mono nerd-fonts-terminus ttf-nerd-fonts-symbols bat
pip3 install --user pynvim

# After reboot
# add google input
# sudo usermod qiqiang -a -G video

# network connect: nmtui
net-tools
