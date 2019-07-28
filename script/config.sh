#########################################################################
# File Name: config.sh
# Author: stout
# mail: 2817253603@qq.com
# Created Time: Mon 08 Apr 2019 07:51:12 PM CST
#########################################################################
#!/bin/bash


rm -rf ~/.vim ~/.vimrc
ln -s ~/dotfiles/.vim ~/.vim
rm -rf ~/.tmux.conf
ln -s ~/dotfiles/.tmux.conf ~/.tmux.conf
rm -rf ~/.zshrc
# ln -s ~/dotfiles/zsh/.zshrc_vm ~/.zshrc
rm ~/.gitconfig
ln -s ~/dotfiles/.gitconfig ~/.gitconfig
rm -rf ~/.bashrc
ln -s ~/dotfiles/.bashrc ~/.bashrc

##========download conda========
#cd ~/config_file/
#curl -O https://mirrors.tuna.tsinghua.edu.cn/anaconda/archive/Anaconda3-5.3.1-Linux-x86_64.sh
#cd 

#============= other config (mannal)  ================
#zsh config
	#zsh
	#chsh $USER -s /usr/bin/zsh
	#reboot
#vim config
	#PlugUpdate
#conda config
	#zsh ~/config_file/Anaconda3-5.3.1-Linux-x86_64.sh
	#conda config --add channels https://mirrors.tuna.tsinghua.edu.cn/anaconda/pkgs/free/
	#conda config --add channels https://mirrors.tuna.tsinghua.edu.cn/anaconda/pkgs/main/
	#conda config --set show_channel_urls yes
	#conda create --name py35 python=3.5 -y
	#conda activate py35
	#conda install -y matplotlib numpy jupyter ipython opencv tensorflow pytorch
#ssh config
	#ssh-keygen -y
	#add ssh-key to website
#chrome config
#pip config (wrong order , wait fix)
	#pip3 install pip -U
	#pip3 config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple
#time-zone config
#fcitx sogoupinyin config
#flameshot config
