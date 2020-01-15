#!/bin/bash
#####################################
# Author: stout                     #
# mail: 2817253603@qq.com           #
# Created Time: 2019-12-14 02:22:13 #
#####################################



# ================= COMMON =================
# pypi
pip install -i https://pypi.tuna.tsinghua.edu.cn/simple pip -U
pip config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple

# npm node/vue
sudo apt install nodejs
npm install -g @vue/cli

# sh
# oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions  #install zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting #install zsh-syntax-hightlighting
# zplugin
sh -c "$(curl -fsSL https://raw.githubusercontent.com/zdharma/zplugin/master/doc/install.sh)"
chsh -s /usr/bin/zsh
# conda
bash ~/Downloads/Miniconda3-latest-Linux-x86_64.sh


# git
git clone --depth=1 https://github.com/hardcoreplayers/ThinkVim.git ~/.config/nvim
git clone https://github.com/chestnutheng/wudao-dict ~/.cache
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# ================= MANJARO =================
# pacman
sudo pacman -Su yay git vim zsh tmux alacritty ranger lxappearence zathura zathura-pdf-poppler nodejs npm yarn ruby-rouge ripgrep neovim ctags wqy-zenhei wqy-microhei i3 dunst compton variety brightnessctl code
sudo pacman -Su fcitx fcitx-configtool fcitx-googlepinyin fcitx-libpinyin fcitx-cloudpinyin yay the_silver_searcher python-pycodestyle flameshot polybar openvpn openssh neofetch polkit rofi
sudo pacman -Su dolphin nerd-fonts-noto-sans-mono nerd-fonts-terminus ttf-nerd-fonts-symbols  typora tldr tig keynav arandr feh nerd-fonts-hack zip unzip network-manager-applet
sudo pacman -Su mendeleydesktop-bundled vsftpd tree google-chrome cmake go go-tools calibre
# wait for assure
sudo pacman -Su paraview

# yay
yay -S i3lock-fancy

# pip
pip3 install -U --user pynvim jedi-language-server jupyter_console openpyxl
# conda 中只有pip，需要pip3再装一下pynvim



# After reboot
# add google input
# sudo usermod qiqiang -a -G video



# =================UBUNTU=================
sudo apt install -y --upgrade alacritty  git zsh vimt tmux ncurses-* ### very important!!!!! solve tmux problem
sudo apt install -y tree curl tweak tldr ctags cscope build-essential flameshot silversearcher-ag gnome-nettool cmatrix fortune-mod fonts-powerline
sudo apt install -y texlive-latex-base latex-cjk-all texlive-latex-extra texlive-xetex

# sogoupinyin
curl  http://cdn2.ime.sogou.com/dl/index/1524572264/sogoupinyin_2.2.0.0108_amd64.deb\?st\=e2rkzoJ2HibQ0Y8dfcZkUQ\&e\=1550853634\&fn\=sogoupinyin_2.2.0.0108_amd64.deb --create-dirs -o ~/tmp/software_packges/sogoupinyin.deb
sudo apt install -y --upgrade fctix
sudo dpkg -i ~/tmp/software_packges/sogoupinyin.deb
# # wps-office
# curl http://kdl.cc.ksosoft.com/wps-community/download/6757/wps-office_10.1.0.6757_amd64.deb --create-dirs -o ~/tmp/software_packges/wps-office.deb
# sudo dpkg -i ~/tmp/software_packges/wps-office.deb
# # typora
# wget -qO - https://typora.io/linux/public-key.asc | apt-key add -
# sudo add-apt-repository 'deb https://typora.io/linux ./'
# sudo apt-get update
# sudo apt-get install -y typora
