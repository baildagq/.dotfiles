# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
# export PATH=/bin:/usr/bin:/usr/local/bin:${PATH}

# export GIT_TRACE_PACKET=1
# export GIT_TRACE=1
# export GIT_CURL_VERBOSE=1
# Path to your oh-my-zsh installation.

# export EIGEN3_INCLUDE_DIR=/usr/local/include/eigen3

export PUB_HOSTED_URL=https://pub.flutter-io.cn
export FLUTTER_STORAGE_BASE_URL=https://storage.flutter-io.cn
export GOPATH=$HOME/go
export GOROOT=/usr/lib/go
export GO111MODULE=on
export GOPROXY=https://goproxy.io
export GOPROXY=https://goproxy.cn
export PKG_CONFIG_PATH="/usr/lib/x86_64-linux-gnu/pkgconfig"
export NODE_NO_WARNINGS=1
export CHROME_EXECUTABLE=/usr/bin/google-chrome-stable

export KF_NAME=my-kubeflow
export BASE_DIR=/opt/kubeflow
export KF_DIR=${BASE_DIR}/${KF_NAME}
export CONFIG_URI="https://raw.githubusercontent.com/kubeflow/manifests/v1.2-branch/kfdef/kfctl_k8s_istio.v1.2.0.yaml" 
# export INGRESS_HOST=$(minikube ip)
# export INGRESS_PORT=$(kubectl -n istio-system get service istio-ingressgateway -o jsonpath='{.spec.ports[?(@.name=="http2")].nodePort}')
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/opt/intel/oneapi/:/opt/ros/noetic/include:/usr/local/lib:/usr/lib
export CPLUS_INCLUDE_PATH=$CPLUS_INCLUDE_PATH:/opt/ros/noetic/include:/usr/local/include

export TERM=xterm-256color

PATH=$PATH:~/Downloads/mips-mti-elf/bin:~/.cache/wudao-dict/wudao-dict/bin:~/.local/bin:~/.joplin:~/.cargo/bin:~/Software/flutter/bin:~/Software/bin:~/go/bin

# To make ranger default editor = vim
VISUAL=vim;export VISUAL EDITOR=vim; export EDITOR

export RUSTUP_DIST_SERVER=https://mirrors.tuna.tsinghua.edu.cn/rustup
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="random"
# ZSH_THEME="amuse"
ZSH_THEME="muse"
# ZSH_THEME="avit"
# ZSH_THEME="dpoggi"
# ZSH_THEME="agnoster"
# ZSH_THEME="robbyrussell"
# ZSH_THEME="af-magic"
# ZSH_THEME="cloud"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
	git
	zsh-autosuggestions
	zsh-syntax-highlighting
    vi-mode
    colored-man-pages
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"


#self: !!!!!!!
# 避免oh-my-zsh 出现文件夹不安全的提示
set ZSH_DISABLE_COMPFIX = true

#################### alias ####################
alias alacritty-colorscheme='alacritty-colorscheme -C ~/.alacritty-themes'
# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
alias bothscreen='~/.script/screen/both.sh' 
alias ft="sh ~/Documents/sh/tmux.sh"
alias godoc='godoc -http=localhost:6060'
alias gg='goldendict'
# alias hibernate='xrandr --output eDP-1 --primary --mode 1920x1080 --pos 0x0 --rotate normal --output HDMI-1 --off && i3lock -c 555555 && systemctl hibernate'
alias hibernate='i3lock -c 555555 && systemctl hibernate'
# alias hibernate='xflock4 && systemctl hibernate'
alias innerscreen='~/.script/screen/only-inner.sh && feh --bg-scale ~/Pictures/camera.jpg' 
alias outerscreen='~/.script/screen/only-outer.sh && feh --bg-scale ~/Pictures/camera.jpg'
alias ipy='ipython3'
alias latexmk="latexmk -xelatex"
alias l="ls -alh"
# alias ls="ls --color"
alias la='ls -A'
alias leet='cd ~/Code/leetcode'
alias lc='leetcode'
alias ll='ls -alF'
alias nv="nvim"
alias ndw="nmcli device wifi"
alias npmtb="npm install --registry=https://registry.npm.taobao.org"
alias note='cd ~/note'
alias py='python3'
alias pc='proxychains'
alias pi='pi@192.168.2.103'
alias ra="ranger"
alias setproxy='export all_proxy=http://127.0.0.1:8889'
alias unproxy='unset all_proxy'
alias sk='setxkbmap -option ctrl:nocaps'
alias gopi='ssh -L 59000:localhost:5901 -C -l ubuntu 192.168.2.103'
alias ta="tmux attach-session"
alias tl="tmux list-session"
alias t="tmux"
alias tmp='cd ~/tmp'
alias vd='vimdiff'
alias v="vim"
alias view="vim -R"
alias wd="wd -s"
alias xdg="xdg-open"
alias za="zathura"

# synclient TouchpadOff=1


#################### function ####################

# # 通过ctrl-z 由vim 进入shell, 并通过ctrl-z 退回shell
# function fancy-ctrl-z {
#   if [[ $#BUFFER -eq 0 ]]; then
#       BUFFER="fg"
#       zle accept-line
#   else
# 	  zle push-input
# 	  zle clear-screen
#   fi
# }
# zle -N fancy-ctrl-z
# bindkey '^Z' fancy-ctrl-z

function mountsharedir {
    sudo mount -t vboxsf D_DRIVE /mnt/d
}

function mountdisk {
    sudo mount /dev/nvme0n1p3 /mnt/d
}

function mkcd {
    mkdir $1 && cd $1
}

function cn {
    sudo sed -iE "s/192\.168\.[0-9][0-9]*\.1/192.168.$1.1/g" /etc/netplan/01-network-manager-all.yaml
    sudo netplan apply 
}

function ck {
    # method-1
    # echo $1 | sudo tee /sys/class/leds/asus::kbd_backlight/brightness

    # method-2
    # if [ $# == 1]
    brightnessctl --device='asus::kbd_backlight' set 1 > /dev/null
    if test $# -eq 0
    then
        brightnessctl --device='asus::kbd_backlight' set 0 > /dev/null
    else
        brightnessctl --device='asus::kbd_backlight' set $1 > /dev/null
    fi
}

function cl {
    brightnessctl s $1% > /dev/null
}

function backdesktop {
    setxkbmap -option caps:ctrl_modifier
    bluetoothctl power on
    doublescreen
}

function countdown {
    minutes=$1
    seconds=$2 
    period=$minutes*60+seconds
    endtime=$((`date +%s` + $period)); 
    while [ "$endtime" -ge `date +%s`  ]; do 
        echo -ne "$(date -u --date @$(($endtime - `date +%s` )) +%H:%M:%S)\r"; 
    done
}


#################### auto start ####################

# conda activate py36

# # auto start tmux as soon as into terminal
# if [[ $(tty) != /dev/tty* ]] && [ $TERM != "tmux-256color" ] && [  $TERM != "screen" ]; then
#   # tmux attach || tmux new; exit
#   tmux new; exit
# fi

# [ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# . /opt/intel/oneapi/setvars.sh

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/local/bin/mc mc

if type rg &> /dev/null; then
    export FZF_DEFAULT_COMMAND='rg --files'
    export FZF_DEFAULT_OPTS='-m --height 80% --border'
fi

# source /opt/ros/noetic/setup.zsh