#!/bin/bash
#####################################
# Author: stout                     #
# mail: 2817253603@qq.com           #
# Created Time: 2020-01-27 19:23:52 #
#####################################


install_tui_mode() {
    # tui
    sudo apt install -y --upgrade \
        git zsh vim tmux ncurses-* ### very important!!!!! solve tmux problem\
        tig tree curl tldr ctags cscope build-essential silversearcher-ag\ 
        fortune-mod fonts-powerline tig python-autopep8 nfs-common python3-pip cmake\
        texlive-latex-base latex-cjk-all texlive-latex-extra texlive-xetex \
        tesseract-ocr tesseract-ocr-chi-sim trash-cli\
        poppler-utils httpie\
        mysql-client mysql-server

    # gitbook


        
    # npm
    curl -sL https://deb.nodesource.com/setup_13.x | sudo -E bash -
    sudo apt-get install -y nodejs npm

    # docker
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
    sudo apt install -y --upgrade docker-ce # docker-ce-cli containerd.io
}

install_gui_mode() {
    # gui
    sudo apt install -y --upgrade\
        tweak flameshot gnome-nettool keynav rofi\
        fctix goldendict calibre\
        synaptic qbittorrent\
        sgt-puzzles

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
    # netease-music
    curl http://d1.music.126.net/dmusic/netease-cloud-music_1.2.1_amd64_ubuntu_20190428.deb --create-dirs -o ~/Downloads/netease-cloud-music.deb
    sudo dpkg -i ~/Downloads/netease-cloud-music.deb
    # mendeley-desktop
    curl https://www.mendeley.com/autoupdates/installer/Linux-x64/stable-incoming --create-dirs -o ~/Downloads/mendeley-desktop.deb
    sudo dpkg -i ~/Downloads/mendeley-desktop.deb
}


mode=$1
[ -z $1 ] && mode="tui"

# update & upgrade 
sudo apt update && sudo apt upgrade -y

case $mode in
    tui)
        install_tui_mode
        ;;
    gui)
        install_tui_mode
        install_gui_mode
        ;;
    *)
        echo
        echo -e "The mode <$red $mode $none> can't be recognized"
        echo
        echo -e "support mode includes $green tui/gui $none"
        echo
        echo -e "the $yellow tui $none mode install packages used in terminal"
        echo
        echo -e "the $yellow gui $none mode install packages used in both terminal and desktop"
        echo
        exit 1
        ;;
esac

# common
./common.sh
