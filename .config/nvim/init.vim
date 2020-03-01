" auto-install vim-plug and install plugins
if empty(glob('~/.config/nvim/autoload/plug.vim'))
    silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
                \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif


"============= General =============
"the most import map
"let mapleader = "\<Space>"
let mapleader =";"
" clipboard : autoselect 和后面的为默认，本来以为可以直接set
" clipbaord+=unnamedplus,但是发现可能就被exclude吃掉了，所以只能将unnameplus写在了前面，然后加上了default"
" set clipboard=unnamedplus,autoselect,exclude:cons\\\|linux
set mouse=a
syntax enable
set number                  "show line numbers
set relativenumber          "show relative line numbers
set termguicolors   " enable true colors support
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set background=dark
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
set wrap
set list
set listchars=tab:\|\ ,trail:▫
" set listchars=tab:>-,trail:-,eol:$ list
set scrolloff=4
set ttyfast "should make scrolling faster
set lazyredraw "same as above

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

"============= Terminal =============
" Opening a terminal window
noremap <LEADER>/ :set splitbelow<CR>:split<CR>:res +10<CR>:term<CR>
" Auto change directory to current dir
autocmd BufEnter * silent! lcd %:p:h
" Call figlet for fun
noremap tx :r !figlet


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

"============== Tab management ===========
" Create a new tab with tu
noremap tu :tabe<CR>
" Move around tabs with tn and ti
noremap tn :-tabnext<CR>
noremap ti :+tabnext<CR>
" Move the tabs with tmn and tmi
noremap tmn :-tabmove<CR>
noremap tmi :+tabmove<CR>


"============== Function  ===========
noremap run :call CompileRunGcc()<CR>
func! CompileRunGcc()
    exec "w"
    if &filetype == 'c'
        exec "!g++ % -o %<"
        exec "!time ./%<"
    elseif &filetype == 'cpp'
        set splitbelow
        exec "!g++ -std=c++11 % -Wall -o %<"
        :sp
        :res -15
        :term ./%<
    elseif &filetype == 'java'
        exec "!javac %"
        exec "!time java %<"
    elseif &filetype == 'sh'
        :!time bash %
    elseif &filetype == 'python'
        set splitbelow
        :sp
        :term python3 %
    elseif &filetype == 'html'
        silent! exec "!".g:mkdp_browser." % &"
    elseif &filetype == 'markdown'
        exec "MarkdownPreview"
    elseif &filetype == 'tex'
        silent! exec "VimtexStop"
        silent! exec "VimtexCompile"
    elseif &filetype == 'dart'
        CocCommand flutter.run
    elseif &filetype == 'go'
        set splitbelow
        :sp
        :term go run %
    endif
endfunc



call plug#begin('~/.config/nvim/autoload/plugged')
Plug 'RRethy/vim-illuminate'
Plug 'junegunn/vim-easy-align'

" Pretty Dress
Plug 'ajmwagar/vim-deus'
Plug 'morhetz/gruvbox'

" Genreal Highlighter
Plug 'jaxbot/semantic-highlight.vim'
Plug 'chrisbra/Colorizer' " Show colors with :ColorHighlight

Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'junegunn/fzf', { 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" Taglist
Plug 'liuchengxu/vista.vim'
call plug#end()

" Auto Complete
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" Undo Tree
Plug 'mbbill/undotree'
" Git
Plug 'airblade/vim-gitgutter'
" Tex
Plug 'lervag/vimtex'
" HTML, CSS, JavaScript, PHP, JSON, etc.
Plug 'elzr/vim-json'
Plug 'hail2u/vim-css3-syntax', { 'for': ['vim-plug', 'php', 'html', 'javascript', 'css', 'less'] }
Plug 'spf13/PIV', { 'for' :['php', 'vim-plug'] }
Plug 'pangloss/vim-javascript', { 'for': ['vim-plug', 'php', 'html', 'javascript', 'css', 'less'] }
Plug 'yuezk/vim-js', { 'for': ['vim-plug', 'php', 'html', 'javascript', 'css', 'less'] }
Plug 'MaxMEllon/vim-jsx-pretty', { 'for': ['vim-plug', 'php', 'html', 'javascript', 'css', 'less'] }
Plug 'jelera/vim-javascript-syntax', { 'for': ['vim-plug', 'php', 'html', 'javascript', 'css', 'less'] }

" Python
Plug 'tmhedberg/SimpylFold', { 'for' :['python', 'vim-plug'] }
Plug 'Vimjas/vim-python-pep8-indent', { 'for' :['python', 'vim-plug'] }
" Plug 'numirias/semshi', { 'do': ':UpdateRemotePlugins', 'for' :['python', 'vim-plug'] }
" Markdown
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install_sync() }, 'for' :['markdown', 'vim-plug'] }
Plug 'dhruvasagar/vim-table-mode', { 'on': 'TableModeToggle' }
Plug 'mzlogin/vim-markdown-toc', { 'for': ['gitignore', 'markdown'] }
Plug 'theniceboy/bullets.vim'

" Editor Enhancement
"Plug 'Raimondi/delimitMate'
Plug 'jiangmiao/auto-pairs'
Plug 'mg979/vim-visual-multi'
Plug 'scrooloose/nerdcommenter' " in <space>cn to comment a line
Plug 'AndrewRadev/switch.vim' " gs to switch
Plug 'tpope/vim-surround' " type yskw' to wrap the word with '' or type cs'` to change 'word' to `word`
Plug 'gcmt/wildfire.vim' " in Visual mode, type k' to select all text in '', or type k) k] k} kp
Plug 'junegunn/vim-after-object' " da= to delete what's after =
Plug 'junegunn/vim-easy-align' " gaip= to align the = in paragraph,
Plug 'tpope/vim-capslock'   " Ctrl+L (insert) to toggle capslock
Plug 'easymotion/vim-easymotion'
Plug 'Konfekt/FastFold'
Plug 'junegunn/vim-peekaboo'
"Plug 'wellle/context.vim'
Plug 'svermeulen/vim-subversive'

" Formatter
Plug 'Chiel92/vim-autoformat'


" Find & Replace
Plug 'brooth/far.vim', { 'on': ['F', 'Far', 'Fardo'] }
Plug 'osyo-manga/vim-anzu'


" Vim Applications
Plug 'itchyny/calendar.vim'


" Other visual enhancement
Plug 'ryanoasis/vim-devicons'
Plug 'luochen1990/rainbow'
" Plug 'mg979/vim-xtabline'
Plug 'wincent/terminus'


call plug#end()







" ===
" === MarkdownPreview
" ===
let g:mkdp_auto_start = 0
let g:mkdp_auto_close = 1
let g:mkdp_refresh_slow = 0
let g:mkdp_command_for_global = 0
let g:mkdp_open_to_the_world = 0
let g:mkdp_open_ip = ''
let g:mkdp_echo_preview_url = 0
let g:mkdp_browserfunc = ''
let g:mkdp_preview_options = {
            \ 'mkit': {},
            \ 'katex': {},
            \ 'uml': {},
            \ 'maid': {},
            \ 'disable_sync_scroll': 0,
            \ 'sync_scroll_type': 'middle',
            \ 'hide_yaml_meta': 1
            \ }
let g:mkdp_markdown_css = ''
let g:mkdp_highlight_css = ''
let g:mkdp_port = ''
let g:mkdp_page_title = '「${name}」'


" ===
" === vim-table-mode
" ===
noremap <LEADER>tm :TableModeToggle<CR>
"let g:table_mode_disable_mappings = 1
let g:table_mode_cell_text_object_i_map = 'k<Bar>'


" ===
" === FZF
" ===
set rtp+=/usr/local/opt/fzf
set rtp+=/home/linuxbrew/.linuxbrew/opt/fzf
noremap <C-p> :FZF<CR>
noremap <C-f> :Ag<CR>
noremap <C-h> :MRU<CR>
noremap <C-t> :BTags<CR>
noremap <C-l> :LinesWithPreview<CR>
"noremap ; :History:<CR>

autocmd! FileType fzf
autocmd  FileType fzf set laststatus=0 noruler
            \| autocmd BufLeave <buffer> set laststatus=2 ruler

command! -bang -nargs=* Buffers
            \ call fzf#vim#buffers(
            \   '',
            \   <bang>0 ? fzf#vim#with_preview('up:60%')
            \           : fzf#vim#with_preview('right:0%', '?'),
            \   <bang>0)


command! -bang -nargs=* LinesWithPreview
            \ call fzf#vim#grep(
            \   'rg --with-filename --column --line-number --no-heading --color=always --smart-case . '.fnameescape(expand('%')), 1,
            \   fzf#vim#with_preview({}, 'up:50%', '?'),
            \   1)

command! -bang -nargs=* Ag
            \ call fzf#vim#ag(
            \   '',
            \   <bang>0 ? fzf#vim#with_preview('up:60%')
            \           : fzf#vim#with_preview('right:50%', '?'),
            \   <bang>0)


command! -bang -nargs=* MRU call fzf#vim#history(fzf#vim#with_preview())

command! -bang BTags
            \ call fzf#vim#buffer_tags('', {
            \     'down': '40%',
            \     'options': '--with-nth 1
            \                 --reverse
            \                 --prompt "> "
            \                 --preview-window="70%"
            \                 --preview "
            \                     tail -n +\$(echo {3} | tr -d \";\\\"\") {2} |
            \                     head -n 16"'
            \ })


" ===
" === AutoFormat
" ===
nnoremap \f :Autoformat<CR>


" ===
" === vim-easy-align
" ===
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)
color gruvbox
