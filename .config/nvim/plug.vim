let mapleader =";"

call plug#begin('~/.config/nvim/autoload/plugged')
Plug 'RRethy/vim-illuminate'
Plug 'liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKey!'] }

" Pretty Dress
Plug 'ajmwagar/vim-deus'
Plug 'morhetz/gruvbox'
Plug 'drewtempelmeyer/palenight.vim'

" Genreal Highlighter
Plug 'jaxbot/semantic-highlight.vim'
Plug 'chrisbra/Colorizer' " Show colors with :ColorHighlight

Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'junegunn/fzf', { 'do': './install --bin' }
Plug 'junegunn/fzf.vim'

" Taglist
Plug 'liuchengxu/vista.vim'

" Auto Complete
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Snippets
" Plug 'SirVer/ultisnips'
" Plug 'honza/vim-snippets'

" " Undo Tree
" Plug 'mbbill/undotree'

" Git
Plug 'airblade/vim-gitgutter'

" language: Tex HTML, CSS, JavaScript, PHP, JSON, etc.
Plug 'lervag/vimtex'
Plug 'hail2u/vim-css3-syntax', { 'for': ['vim-plug', 'php', 'html', 'javascript', 'css', 'less'] }
Plug 'spf13/PIV', { 'for' :['php', 'vim-plug'] }
Plug 'pangloss/vim-javascript', { 'for': ['vim-plug', 'php', 'html', 'javascript', 'css', 'less'] }
Plug 'yuezk/vim-js', { 'for': ['vim-plug', 'php', 'html', 'javascript', 'css', 'less'] }
Plug 'MaxMEllon/vim-jsx-pretty', { 'for': ['vim-plug', 'php', 'html', 'javascript', 'css', 'less'] }
Plug 'jelera/vim-javascript-syntax', { 'for': ['vim-plug', 'php', 'html', 'javascript', 'css', 'less'] }

" Python
" Plug 'tmhedberg/SimpylFold', { 'for' :['python', 'vim-plug'] }
" Plug 'Vimjas/vim-python-pep8-indent', { 'for' :['python', 'vim-plug'] }
" Plug 'numirias/semshi', { 'do': ':UpdateRemotePlugins', 'for' :['python', 'vim-plug'] }

" Markdown
Plug 'plasticboy/vim-markdown'
" Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install_sync() }, 'for' :['markdown', 'vim-plug'] }
" Plug 'dhruvasagar/vim-table-mode', { 'on': 'TableModeToggle' }
" Plug 'mzlogin/vim-markdown-toc', { 'for': ['gitignore', 'markdown'] }
" Plug 'theniceboy/bullets.vim'

" Dart
Plug 'dart-lang/dart-vim-plugin'

" Editor Enhancement
Plug 'junegunn/goyo.vim' " Distraction-free writing in Vim
Plug 'itchyny/lightline.vim'
Plug 'tomtom/tcomment_vim'
Plug 'junegunn/vim-easy-align' " gaip= to align the = in paragraph,
Plug 'jiangmiao/auto-pairs'
Plug 'Raimondi/delimitMate'
" Plug 'mg979/vim-visual-multi'
" Plug 'AndrewRadev/switch.vim' " gs to switch
" Plug 'tpope/vim-surround' " type yskw' to wrap the word with '' or type cs'` to change 'word' to `word`
" Plug 'gcmt/wildfire.vim' " in Visual mode, type k' to select all text in '', or type k) k] k} kp
" Plug 'junegunn/vim-after-object' " da= to delete what's after =
" Plug 'tpope/vim-capslock'   " Ctrl+L (insert) to toggle capslock
" Plug 'easymotion/vim-easymotion'
" Plug 'Konfekt/FastFold'
" Plug 'junegunn/vim-peekaboo'
" Plug 'wellle/context.vim'
" Plug 'svermeulen/vim-subversive'

" Formatter
Plug 'Chiel92/vim-autoformat'

" " Find & Replace
" Plug 'brooth/far.vim', { 'on': ['F', 'Far', 'Fardo'] }
" Plug 'osyo-manga/vim-anzu'

" Vim Applications
Plug 'itchyny/calendar.vim'

" Other visual enhancement
Plug 'ryanoasis/vim-devicons'
Plug 'luochen1990/rainbow'
" Plug 'mg979/vim-xtabline'
Plug 'wincent/terminus'


call plug#end()



" === MarkdownPreview
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


" === vim-table-mode
noremap <LEADER>tm :TableModeToggle<CR>
"let g:table_mode_disable_mappings = 1
let g:table_mode_cell_text_object_i_map = 'k<Bar>'


" " === FZF
" set rtp+=/usr/local/opt/fzf
" set rtp+=/home/linuxbrew/.linuxbrew/opt/fzf
" noremap <C-p> :FZF<CR>
" noremap <C-f> :Ag<CR>
" noremap <C-h> :MRU<CR>
" noremap <C-t> :BTags<CR>
" noremap <C-l> :LinesWithPreview<CR>
" "noremap ; :History:<CR>
" autocmd! FileType fzf
" autocmd  FileType fzf set laststatus=0 noruler
"             \| autocmd BufLeave <buffer> set laststatus=2 ruler
"
" command! -bang -nargs=* Buffers
"             \ call fzf#vim#buffers(
"             \   '',
"             \   <bang>0 ? fzf#vim#with_preview('up:60%')
"             \           : fzf#vim#with_preview('right:0%', '?'),
"             \   <bang>0)
"
"
" command! -bang -nargs=* LinesWithPreview
"             \ call fzf#vim#grep(
"             \   'rg --with-filename --column --line-number --no-heading --color=always --smart-case . '.fnameescape(expand('%')), 1,
"             \   fzf#vim#with_preview({}, 'up:50%', '?'),
"             \   1)
"
" command! -bang -nargs=* Ag
"             \ call fzf#vim#ag(
"             \   '',
"             \   <bang>0 ? fzf#vim#with_preview('up:60%')
"             \           : fzf#vim#with_preview('right:50%', '?'),
"             \   <bang>0)
"
"
" command! -bang -nargs=* MRU call fzf#vim#history(fzf#vim#with_preview())
"
" command! -bang BTags
"             \ call fzf#vim#buffer_tags('', {
"             \     'down': '40%',
"             \     'options': '--with-nth 1
"             \                 --reverse
"             \                 --prompt "> "
"             \                 --preview-window="70%"
"             \                 --preview "
"             \                     tail -n +\$(echo {3} | tr -d \";\\\"\") {2} |
"             \                     head -n 16"'
"             \ })


" ===
" === vim-easy-align
" ===
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)



" ===
" === vim-which-key
" ===
nnoremap <silent> <leader>      :<c-u>WhichKey ';'<CR>
let g:which_key_map = {}
let g:which_key_map.w = {
      \ 'name' : '+windows' ,
      \ 'w' : ['<C-W>w'     , 'other-window']          ,
      \ 'd' : ['<C-W>c'     , 'delete-window']         ,
      \ '-' : ['<C-W>s'     , 'split-window-below']    ,
      \ '|' : ['<C-W>v'     , 'split-window-right']    ,
      \ '2' : ['<C-W>v'     , 'layout-double-columns'] ,
      \ 'h' : ['<C-W>h'     , 'window-left']           ,
      \ 'j' : ['<C-W>j'     , 'window-below']          ,
      \ 'l' : ['<C-W>l'     , 'window-right']          ,
      \ 'k' : ['<C-W>k'     , 'window-up']             ,
      \ 'H' : ['<C-W>5<'    , 'expand-window-left']    ,
      \ 'J' : ['resize +5'  , 'expand-window-below']   ,
      \ 'L' : ['<C-W>5>'    , 'expand-window-right']   ,
      \ 'K' : ['resize -5'  , 'expand-window-up']      ,
      \ '=' : ['<C-W>='     , 'balance-window']        ,
      \ 's' : ['<C-W>s'     , 'split-window-below']    ,
      \ 'v' : ['<C-W>v'     , 'split-window-below']    ,
      \ '?' : ['Windows'    , 'fzf-window']            ,
      \ }


" " ===
" " === coc.nvim
" " ===
" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" " Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" " position. Coc only does snippet and additional edit on confirm.
" if has('patch8.1.1068')
"   " Use `complete_info` if your (Neo)Vim version supports it.
"   inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
" else
"   imap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" endif

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')


" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)


augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current line.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Introduce function text object
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap if <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)

" Use <TAB> for selections ranges.
" NOTE: Requires 'textDocument/selectionRange' support from the language server.
" coc-tsserver, coc-python are the examples of servers that support it.
nmap <silent> <TAB> <Plug>(coc-range-select)
xmap <silent> <TAB> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Calendar
noremap <LEADER>C :Calendar<CR>

" NERDTree
let g:NERDTreeWinSize = 20
