#################### basic ####################
# pacman
sudo pacman -Su yay git vim zsh tmux alacritty ranger lxappearence zathura zathura-pdf-poppler nodejs npm yarn ruby-rouge ripgrep neovim ctags wqy-microhei i3 dunst compton variety brightnessctl code

sudo pacman -Su fcitx fcitx-configtool fcitx-googlepinyin fcitx-libpinyin fcitx-cloudpinyin yay the_silver_searcher python-pycodestyle flameshot polybar openvpn openssh neofetch polkit rofi

sudo pacman -Su dolphin nerd-fonts-noto-sans-mono nerd-fonts-terminus ttf-nerd-fonts-symbols  typora tldr tig keynav arandr feh nerd-fonts-hack zip unzip network-manager-applet

sudo pacman -Su texlive-core texlive-langextra biber tllocalmgr texlive-bibtexextra texlive-fontsextra

sudo pacman -Su mendeleydesktop-bundled vsftpd tree google-chrome cmake go go-tools calibre
# wait for assure
sudo pacman -Su paraview

# yay
yay -S i3lock-fancy
yay -S texlive-most texlive-localmanager-git texlive-gantt

# pip
pip3 install -U --user pynvim jedi-language-server jupyter_console openpyxl
# conda 中只有pip，需要pip3再装一下pynvim

# git
git clone --depth=1 https://github.com/hardcoreplayers/ThinkVim.git ~/.config/nvim
git clone https://github.com/chestnutheng/wudao-dict ~/.cache
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# sh
bash ~/Downloads/Miniconda3-latest-Linux-x86_64.sh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/zdharma/zplugin/master/doc/install.sh)"
chsh -s /usr/bin/zsh

# After reboot
# add google input
# sudo usermod qiqiang -a -G video

# tllocalmgr
tllocalmgr install ctex zhnumber
texhash


#################### advance ####################
# yay -S cross-mipsel-linux-gnu-gcc
# yay -S cross-mips-elf-gcc
# sudo pacman -S qemu-arch-extral
