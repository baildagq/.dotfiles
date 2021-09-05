#!/bin/bash
softwares=("vim" "git" "wget" "zsh" "tmux" "nodejs" "npm")

function checksoftware() {
    if ! type "$1" > /dev/null 2>&1
    then
        echo "please install $1"
        flag=false
    fi
    return 0
}

function softlink() {
    item=$1
    # remove soft link
    if [ -h "$HOME/$item" ]
    then
        rm "$HOME/$item"
    fi
    # remove old config file
    if [ -e "$HOME/$item" ]
    then
        mv "$HOME/$item" "$HOME/$item.back"
    fi
    # specical case: vim
    if [ "$item" == '.vim' ]
    then
        if [ -e "$HOME/.vimrc" ]
        then
            mv "$HOME/.vimrc" "$HOME/.vimrc.back"
        fi
    fi
    ln -s "$HOME/.basic-dotfiles/$item" "$HOME/$item"
}

for item in ${softwares[*]}; do
    if ! checksoftware "$item"; then
        flag=false
    fi
done

if $flag; then
    cd "$HOME" || exit
    # vim
    softlink '.vim'
    vim -c "PlugInstall" -c "qa"
    vim -c "CocInstall coc-marketplace" -c "qa"
    vim -c "CocUpdate" -c "qa"

    # tmux
    if [ ! -d ~/.tmux ]; then
        git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
        ~/.tmux/plugins/tpm/bin/install_plugins
    fi
    softlink '.tmux.conf'

    # zsh
    # install oh-my-zsh && oh-my-zsh plugins
    if [ ! -d ~/.oh-my-zsh ]; then
        echo "downloading oh-my-zsh..."
        sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
        git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions  
        git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting 
    fi
    softlink '.zshrc'
else
    echo "please install missing software to satisfy enviroment requirement firstly, exit."
    exit 1
fi
