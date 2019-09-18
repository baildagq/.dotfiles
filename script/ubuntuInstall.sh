#########################################################################
# config_file Name: install.sh
# Author: stout
# mail: 2817253603@qq.com
# Created Time: Fri 18 Jan 2019 03:31:31 PM CST
#########################################################################
#!/bin/bash

#========== config source ===========
sudo mv /etc/apt/sources.list /etc/apt/sources.list.back
sudo ln -s ~/.config_file/sources.list /etc/apt/sources.list
sudo apt update
sudo apt upgrade -y

#========terminal
sudo apt install -y alacritty 
# sudo apt install -y rxvt-unicode

#========install important tools========
sudo apt install -y --upgrade git zsh vimt tmux ncurses-* ### very important!!!!! solve tmux problem

#========install basic tools========
sudo apt install -y tree curl tweak tldr ctags cscope build-essential flameshot silversearcher-ag gnome-nettool cmatrix fortune-mod 

#========install sogoupinyin========
 curl  http://cdn2.ime.sogou.com/dl/index/1524572264/sogoupinyin_2.2.0.0108_amd64.deb\?st\=e2rkzoJ2HibQ0Y8dfcZkUQ\&e\=1550853634\&fn\=sogoupinyin_2.2.0.0108_amd64.deb --create-dirs -o ~/tmp/software_packges/sogoupinyin.deb
sudo apt install -y --upgrade fctix
sudo dpkg -i ~/tmp/software_packges/sogoupinyin.deb

#========install wps-office========
curl http://kdl.cc.ksosoft.com/wps-community/download/6757/wps-office_10.1.0.6757_amd64.deb --create-dirs -o ~/tmp/software_packges/wps-office.deb
sudo dpkg -i ~/tmp/software_packges/wps-office.deb

#======== remove libreoffice========
sudo apt-get purge -y libreoffice*
sudo apt autoremove -y
sudo apt install -y -f 

# #========install sublime =============
# wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
# sudo apt-get install apt-transport-https
# echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
# sudo apt-get update -y
# sudo apt-get install -y sublime-text

#========install typora========
wget -qO - https://typora.io/linux/public-key.asc | apt-key add -
sudo add-apt-repository 'deb https://typora.io/linux ./'
sudo apt-get update
sudo apt-get install -y typora

#========install texlive=========
sudo apt install -y texlive-full 

#========update pip========
sudo apt install -y python3-pip

#========install oh-my-zsh========
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions  #install zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting #install zsh-syntax-hightlighting


#========install wudao_dict========
# sudo apt-get install python3
# sudo apt-get install python3-pip
# pip3 install bs4
# pip3 install lxml
# mkdir ~/Software
# cd ~/Software
# git clone https://github.com/chestnutheng/wudao-dict
