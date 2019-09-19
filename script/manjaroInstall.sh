#################### basic ####################
# pacman
sudo pacman -Su yay git vim zsh tmux alacritty ranger zathura zathura-pdf-poppler nodejs npm yarn ruby-rouge ripgrep neovim wqy-microhei i3 dunst compton variety brightnessctl code

sudo pacman -Su fcitx fcitx-configtool fcitx-googlepinyin yay the_silver_searcher python-pycodestyle flameshot polybar openvpn openssh neofetch polkit rofi

sudo pacman -Su thunar nerd-fonts-noto-sans-mono nerd-fonts-terminus ttf-nerd-fonts-symbols  typora tldr tig keynav arandr feh
# wait for assure
sudo pacman -Su paraview

# yay
yay -S i3lock-fancy

# pip
pip3 install -U --user pynvim jedi-language-server jupyter_console

# git
git clone --depth=1 https://github.com/hardcoreplayers/ThinkVim.git ~/.config/nvim

# sh
bash ~/Downloads/Miniconda3-latest-Linux-x86_64.sh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/zdharma/zplugin/master/doc/install.sh)"
chsh -s /usr/bin/zsh

# After reboot
# add google input
# sudo usermod qiqiang -a -G video


#################### basic ####################
# yay -S cross-mipsel-linux-gnu-gcc
# yay -S cross-mips-elf-gcc
# sudo pacman -S qemu-arch-extral
