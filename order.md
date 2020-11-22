# 命令记录

#################### common ####################

# print color
for ((i = 0; i < 256; i++)); do printf '\e[38;5;%dm%03d' "${i}" "${i}"; done]'

# install youcompleteme
python3 install.py --clang-completer --all
python3 install.py --clang-completer --system-libclang --all

# compile using opencv file
g++ $(pkg-config --cflags opencv) main.cpp -o main $(pkg-config --libs opencv) && ./main

# pip3 config
pip config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple


grep -e "ctrl:\|:ctrl" /usr/share/X11/xkb/rules/evdev.lst

setxkbmap -option caps:ctrl_modifier

jupyter console

npm install --registry=https://registry.npm.taobao.org

du -h --max-depth=2

git push --delete origin qq
git branch -d qq

./node_modules/.bin/eslint --init

# docker
sudo docker run -it -p 80:80 sate-back:latest /usr/bin run.sh
sudo docker run -it -p 80:80 sate-back:latest /bin/bash
sudo docker run -itd --name ubuntu-test -v /hoe/qiqiqang/e/tmp/:/data ubuntu18.04 /bin/bash

# rofi
rofi -lines 12 -padding 18 -width 60 -location 0 -show drun -sidebar-mode -columns  3





#################### manjaro ####################
sudo pacman-mirrors -i -c China -m rank
yay
wqy-microhei
# ssh service
systemctl enable sshd.service   #   开机启动
systemctl start sshd.service    #   立即启动
systemctl restart sshd.service  #   立即重启

# to solve screen lightness and keyboard lightness
# screen:
    # install light(manjaro)
    # reboot to add 'video' group which could change lightness
    # add current user to 'video' group:
    sudo usermod qiqiang -aG video

# to resolve nvim markdownpreview error
cd ~/.cache/vim/dein/repos/github.com/iamcco/markdown-preview.nvim
npm install

sudo pacman -Rnc xxxxx

python3 -m pydoc -p 1234



#################### ubuntu  ####################
# list system terminal
update-alternatives --list x-terminal-emulator
sudo add-apt-repository --update ppa:nicolais/termshark
sudo apt install termshark
sudo update-alternatives --install /usr/bin/clangd clangd /usr/bin/clangd-9 100




#################### other  ####################
sudo apt-get install gcc-mips-linux-gnu

# patch
patch -p1 < 1.patch


#################### vim   ####################
set paste

#################### vmware ####################
# sometime share directory could not be seen
sudo /usr/bin/vmhgfs-fuse .host:/D /mnt/hgfs/D -o allow_other

# udpate system-time with net
sudo ntpdate time.windows.com
gsettings get org.gnome.desktop.interface monospace-font-name
sudo dpkg-reconfigure lightdm

# look the manual install package
comm -23 <(apt-mark showmanual | sort -u) <(gzip -dc /var/log/installer/initial-status.gz | sed -n 's/^Package: //p' | sort -u)

# add user brightnessctl permission
sudo usermod qiqiang -a -G video
sudo gpasswd -a ${USER} docker

nmcli c add type wifi autoconnect yes ifname wlp4s0 ssid 红米手机
nmcli c up 红米手机 --ask
nmcli c up 齐金生 passwd-file ~/.key/齐金生.key

fc-list # 列出字体，得到名称

find ./ -type -f | xargs dos2unix # 找到所有类型为文件的文件并且dos2unix
find ./ -type l -delete # 找到所有类型为软链接的文件，并且删除它们

vim +PlugInstall +qall

sudo dpkg --configure -a
service --status-all


sudo systemctl daemon-reload

find /usr/ -name libproxychains.so.3 -print


fc-match 'DejaVuSansMono Nerd Font'

sudo modprobe vboxdrv
sudo grub-mkconfig -o /boot/grub/grub.cfg

fdisk
lsblk
df
