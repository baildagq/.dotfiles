#!/bin/bash
#####################################
# Author: stout                     #
# mail: 2817253603@qq.com           #
# Created Time: 2020-01-27 19:23:52 #
#####################################

sudo apt update && sudo apt upgrade -y
sudo apt install -y --upgrade git zsh vim tmux ncurses-* ### very important!!!!! solve tmux problem
sudo apt install -y --upgrade tig tree curl tweak tldr ctags cscope build-essential flameshot silversearcher-ag gnome-nettool fortune-mod fonts-powerline rofi tig
sudo apt install -y --upgrade texlive-latex-base latex-cjk-all texlive-latex-extra texlive-xetex
sudo apt install -y --upgrade python-autopep8 keynav
sudo apt install -y --upgrade fctix goldendict calibre
sudo apt install -y --upgrade synaptic qbittorrent

# not important
# command-line small tools
sudo apt install -y --upgrade cmus mutt amixer hledger
# some tools
sudo apt install -y --upgrade upad

# sogoupinyin
curl  http://cdn2.ime.sogou.com/dl/index/1524572264/sogoupinyin_2.2.0.0108_amd64.deb\?st\=e2rkzoJ2HibQ0Y8dfcZkUQ\&e\=1550853634\&fn\=sogoupinyin_2.2.0.0108_amd64.deb --create-dirs -o ~/Downloads/sogoupinyin.deb
sudo dpkg -i ~/Downloads/sogoupinyin.deb

# wps-office
curl http://kdl.cc.ksosoft.com/wps-community/download/6757/wps-office_10.1.0.6757_amd64.deb --create-dirs -o ~/Downloads/wps-office.deb
sudo dpkg -i ~/Downloads/wps-office.deb

# typora
wget -qO - https://typora.io/linux/public-key.asc | apt-key add -
sudo add-apt-repository 'deb https://typora.io/linux ./'
sudo apt update
sudo apt install -y --upgrade typora

# npm node/vue
sudo apt install -y --upgrade nodejs
npm install -g @vue/cli

# docker
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt install -y --upgrade docker-ce docker-ce-cli containerd.io

# netease-music
curl http://d1.music.126.net/dmusic/netease-cloud-music_1.2.1_amd64_ubuntu_20190428.deb --create-dirs -o ~/Downloads/netease-cloud-music.deb
sudo dpkg -i ~/Downloads/netease-cloud-music.deb

# mendeley-desktop
curl https://www.mendeley.com/autoupdates/installer/Linux-x64/stable-incoming --create-dirs -o ~/Downloads/mendeley-desktop.deb
sudo dpkg -i ~/Downloads/mendeley-desktop.deb


# common
./common.sh
