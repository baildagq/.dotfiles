"============= General =============
"the most import map
"let mapleader = "\<Space>"
let mapleader =";"
nmap <leader>v "+gp
nmap <leader>c "+y
vmap <leader>v "+gp
vmap <leader>c "+y
" easy resize
noremap <up> :res +5<CR>
noremap <down> :res -5<CR>
noremap <left> :vertical res -5<CR>
noremap <right> :vertical res +5<CR>
nnoremap Y y$
nnoremap C c$
nnoremap D d$

" clipboard : autoselect 和后面的为默认，本来以为可以直接set
" clipbaord+=unnamedplus,但是发现可能就被exclude吃掉了，所以只能将unnameplus写在了前面，然后加上了default"
" set clipboard=unnamedplus,autoselect,exclude:cons\\\|linux
set mouse=a
syntax enable
set number                  "show line numbers
set relativenumber          "show relative line numbers
set showcmd                 "show command in bottom bar
set novisualbell            "no screen flashing
set autoread                "reload the file changed outside vim
set autowrite               "auto save file
set history=1000            "Store lots of :cmdline history
set cursorline              "highlight current line
set cursorcolumn            "highlight current column
set showmatch               "highlight matching {[()]}
set pumheight=10            " 设置补全高度为10"
set laststatus=2
set cmdheight=1
set nowrap
set list
set listchars=tab:\|\ ,trail:▫
" set listchars=tab:>-,trail:-,eol:$ list
set scrolloff=4
set ttyfast "should make scrolling faster
set lazyredraw "same as above
set hidden

" undo, but i don't understant it yet
silent !mkdir -p ~/.config/nvim/tmp/backup
silent !mkdir -p ~/.config/nvim/tmp/undo
"silent !mkdir -p ~/.config/nvim/tmp/sessions
set backupdir=~/.config/nvim/tmp/backup,.
set directory=~/.config/nvim/tmp/backup,.
if has('persistent_undo')
    set undofile
    set undodir=~/.config/nvim/tmp/undo,.
endif

"============= Encoding ================
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8

"============= Indentation =============
set autoindent
set smartindent
set cindent
set tabstop=4               "number  of visual spaces per tab
set softtabstop=4           "number of spaces in tab when editing
set shiftwidth=4            "click one 'delete' delete four space
set smarttab                " 将Tab自动转化成空格[需要输入真正的Tab键时，使用 Ctrl+V + Tab]
set expandtab


"==============  Backup ==============
set nobackup                "no backup files
set noswapfile              "no swap files
set nowritebackup           "only in case you don't want a backup file while editing
set noundofile


"==============  Search ==============
set incsearch               "matching when you are inputing
set hlsearch                "highlight the match when search
set ignorecase              "ignore case when searching
set smartcase               " ...unless we type a capital

"============== folds ===========
set foldenable          "enable fold feature
set foldlevel=5
set foldmethod=indent   "fold based on syntax, other could be indent manual diff

"============= jump =============
set tags=./tags;,tags

"============== Tab management ===========
" Create a new tab with tu
noremap tu :tabe<CR>
" Move around tabs with tn and ti
noremap ti :-tabnext<CR>
noremap tn :+tabnext<CR>
" Move the tabs with tmn and tmi
noremap tmn :-tabmove<CR>
noremap tmi :+tabmove<CR>
noremap <LEADER>/ :set splitbelow<CR>:split<CR>:res +10<CR>:term<CR>
noremap run :call CompileRunGcc()<CR>
nnoremap <F2>: NERDTree<cr>
nnoremap <F4>: TagbarToggle<cr>
nnoremap <F5>: call CompileRunGcc()<CR>
nnoremap <F6>: Autoformat<cr>
map <C-n> :NERDTreeToggle<CR>

color palenight
set background=dark

" " Auto change directory to current dir
" autocmd BufEnter * silent! lcd %:p:h