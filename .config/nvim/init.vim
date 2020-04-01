" auto-install vim-plug and install plugins
if empty(glob('~/.config/nvim/autoload/plug.vim'))
    silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
                \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

if filereadable(expand("~/.config/nvim/plug.vim"))
    source ~/.config/nvim/plug.vim
endif
if filereadable(expand("~/.config/nvim/snippets.vim"))
    source ~/.config/nvim/snippets.vim
endif
if filereadable(expand("~/.config/nvim/functions.vim"))
    source ~/.config/nvim/functions.vim
endif
if filereadable(expand("~/.config/nvim/fileType.vim"))
    source ~/.config/nvim/fileType.vim
endif
if filereadable(expand("~/.config/nvim/general.vim"))
    source ~/.config/nvim/general.vim
endif
