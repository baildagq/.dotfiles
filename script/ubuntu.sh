#!/bin/bash
#####################################
# Author: stout                     #
# mail: 2817253603@qq.com           #
# Created Time: 2020-01-27 19:23:52 #
#####################################

INSTALL="sudo apt install -y --upgrade"

# TUI
install_basic() {
     $INSTALL git zsh vim tmux ncurses-* tig tree curl wget httpie tldr ctags cscope\
         build-essential silversearcher-ag fonts-powerline ipython3 python-autopep8 python3-pip\
         cmake poppler-utils gnome-nettool neofetch
}
install_mysql() {
    $INSTALL mysql-client mysql-server
}
install_qemu() {
    $INSTALL mysql-client mysql-server
}
install_npm() {
    # npm
    curl -sL https://deb.nodesource.com/setup_13.x | sudo -E bash -
    $INSTALL nodejs npm
}
install_docker() {
    # docker
    sudo apt remove docker docker-engine docker.io
    $INSTALL apt-transport-https ca-certificates curl gnupg2 software-properties-common
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
    $INSTALL docker-ce # docker-ce-cli containerd.io
}
install_latex() {
    $INSTALL texlive-latex-base latex-cjk-all texlive-latex-extra texlive-xetex
}
install_ocr() {
    $INSTALL tesseract-ocr tesseract-ocr-chi-sim
}








# GUI
install_utiltools() {
     $INSTALL zathura tweak flameshot keynav rofi goldendict\
         calibre synaptic qbittorrent sgt-puzzles chromium-browser okular meld
}
install_sogoupinyin() {
    # sogoupinyin
    $INSTALL fcitx
    curl  http://cdn2.ime.sogou.com/dl/index/1524572264/sogoupinyin_2.2.0.0108_amd64.deb\?st\=e2rkzoJ2HibQ0Y8dfcZkUQ\&e\=1550853634\&fn\=sogoupinyin_2.2.0.0108_amd64.deb --create-dirs -o ~/Downloads/sogoupinyin.deb
    sudo dpkg -i ~/Downloads/sogoupinyin.deb
}
install_office() {
    # wps-office
    curl http://kdl.cc.ksosoft.com/wps-community/download/6757/wps-office_10.1.0.6757_amd64.deb --create-dirs -o ~/Downloads/wps-office.deb
    sudo dpkg -i ~/Downloads/wps-office.deb
}
install_typora() {
    wget -qO - https://typora.io/linux/public-key.asc | sudo apt-key add -
    # add Typora's repository
    sudo add-apt-repository 'deb https://typora.io/linux ./'
    sudo apt-get update
    # install typora
    $INSTALL typora
}
install_netease() {
    # netease-music
    curl http://d1.music.126.net/dmusic/netease-cloud-music_1.2.1_amd64_ubuntu_20190428.deb --create-dirs -o ~/Downloads/netease-cloud-music.deb
    sudo dpkg -i ~/Downloads/netease-cloud-music.deb
}
install_mendelay() {
    # mendeley-desktop
    curl https://www.mendeley.com/autoupdates/installer/Linux-x64/stable-incoming --create-dirs -o ~/Downloads/mendeley-desktop.deb
    sudo dpkg -i ~/Downloads/mendeley-desktop.deb
}



INSTALLOPTIONS() {
    # tui
    # install_basic
    # install_mysql
    # install_qemu
    # install_npm
    # install_docker
    # install_latex
    # install_ocr


    # gui
    # install_utiltools
    # install_typora
    install_sogoupinyin
    # install_office
    # install_netease
    # install_mendelay
}

sudo apt update && sudo apt upgrade -y
INSTALLOPTIONS
