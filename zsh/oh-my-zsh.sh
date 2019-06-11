#########################################################################
# File Name: oh-my-zsh.sh
# Author: stout
# mail: 2817253603@qq.com
# Created Time: Thu 09 May 2019 03:48:25 PM DST
#########################################################################
#!/bin/bash

#========install oh-my-zsh========
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions  #install zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting #install zsh-syntax-hightlighting
