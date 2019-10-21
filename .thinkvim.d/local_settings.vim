" __     ___             _                          __  __
" \ \   / (_)_ __ ___   | |    _____   _____  ___  |  \/  | ___
"  \ \ / /| | '_ ` _ \  | |   / _ \ \ / / _ \/ __| | |\/| |/ _ \
"   \ V / | | | | | | | | |__| (_) \ V /  __/\__ \ | |  | |  __/
"    \_/  |_|_| |_| |_| |_____\___/ \_/ \___||___/ |_|  |_|\___|
"
" Local setting file of ThinkVim.
" Author: Na Sen


" I do change this very often
colorscheme neodark
" colorscheme gruvbox
set cursorline

nmap <leader>p :Prettier<CR>
vmap <leader>p :Prettier<CR>

" easy resize
noremap <up> :res +5<CR>
noremap <down> :res -5<CR>
noremap <left> :vertical res -5<CR>
noremap <right> :vertical res +5<CR>

nnoremap H 10h
nnoremap J 10j
nnoremap K 10k
nnoremap L 10l

vnoremap H 10h
vnoremap J 10j
vnoremap K 10k
vnoremap L 10l

tnoremap <Esc> <C-\><C-n>

" easy align mappings
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

" miniyank
" map p <Plug>(miniyank-autoput)
" map P <Plug>(miniyank-autoPut)

" rename current word/variable
nmap <leader>rn <Plug>(coc-rename)

" find the next <++> and start to edit it
nnoremap <localleader><localleader> <Esc>/<++><CR>:nohlsearch<CR>c4l

" keep cursor centered
set scrolloff=5

let g:mkdp_auto_close = 1

let g:transparent_background = 1

nnoremap <silent> <leader>h :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" rainbow configuration
let g:rainbow_conf = {
\   'guifgs': ['#F9D800', 'LightMagenta', 'LightBlue'],
\   'ctermfgs': ['lightblue', 'lightyellow', 'lightcyan', 'lightmagenta'],
\   'separately': {
    \ 'htmldjango': {
    \ 'parentheses': ['start=/{{/ end=/}}/']
  \     }
  \ }
\}

" vista.vim support
let g:vista_default_executive = 'coc'

let g:vista_executive_for = {
    \ 'cpp': 'vim_lsp',
    \ 'php': 'vim_lsp'
  \ }

" spaceline config
let g:spaceline_seperate_style = 'none'


" make background transparent
if !exists("g:transparent_background")
    let g:transparent_background = 0
endif

if g:transparent_background == 1
    hi Normal guibg=None ctermbg=None
    hi SignColumn guibg=None ctermbg=None
    hi DiffAdd guibg=None ctermbg=None
    hi DiffDelete guibg=None ctermbg=None
    hi DiffChange guibg=None ctermbg=None
    hi SignifyLineDelete guibg=None ctermbg=None
    hi SignifyLineChange guibg=None ctermbg=None
endif

" set system clipboard
set clipboard+=unnamedplus

autocmd BufNewFile,BufRead *.vue setf vue

set shiftwidth=2
set tabstop=2
set expandtab

" no backup
set nobackup				"no backup files
set noswapfile				"no swap files
set nowritebackup			"only in case you don't want a backup file while editing
set noundofile

"folds
set foldenable          "enable fold feature
set foldlevel=0
set foldmethod=indent
" 折叠方法
" manual    手工折叠
" indent    使用缩进表示折叠
" expr      使用表达式定义折叠
" syntax    使用语法定义折叠
" diff      对没有更改的文本进行折叠
" marker    使用标记进行折叠, 默认标记是 {{{ 和 }}}
