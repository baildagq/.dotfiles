# pacman
sudo pacman -Su yay git vim zsh tmux alacritty ranger zathura nodejs npm yarn ruby-rouge ripgrep neovim wqy-microhei i3 dunst compton variety brightnessctl 
sudo pacman -Su fcitx fcitx-configtool fcitx-googlepinyin yay the_silver_searcher python-pycodestyle flameshot polybar openvpn openssh neofetch polkit rofi

sudo pacman -Su thunar nerd-fonts-noto-sans-mono nerd-fonts-terminus ttf-nerd-fonts-symbols  typora

# yay 
yay -S i3lock-fancy

# pip
pip3 install -U --user pynvim

# git
git clone --depth=1 https://github.com/hardcoreplayers/ThinkVim.git ~/.config/nvim

# sh
bash ~/Downloads/Miniconda3-latest-Linux-x86_64.sh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/zdharma/zplugin/master/doc/install.sh)"
chsh -s /usr/bin/zsh

# After reboot
# add google input
# sudo usermod qiqiang -a -G video
