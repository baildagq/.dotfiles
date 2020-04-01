let mapleader =";"
autocmd Filetype markdown inoremap <buffer> <LEADER>f <Esc>/<++><CR>:nohlsearch<CR>"_c4l
autocmd Filetype markdown inoremap <buffer> <LEADER>w <Esc>/ <++><CR>:nohlsearch<CR>"_c5l<CR>
autocmd Filetype markdown inoremap <buffer> <LEADER>n ---<Enter><Enter>
autocmd Filetype markdown inoremap <buffer> <LEADER>b **** <++><Esc>F*hi
autocmd Filetype markdown inoremap <buffer> <LEADER>s ~~~~ <++><Esc>F~hi
autocmd Filetype markdown inoremap <buffer> <LEADER>i ** <++><Esc>F*i
autocmd Filetype markdown inoremap <buffer> <LEADER>d `` <++><Esc>F`i
autocmd Filetype markdown inoremap <buffer> <LEADER>c ```<Enter><++><Enter>```<Enter><Enter><++><Esc>4kA
autocmd Filetype markdown inoremap <buffer> <LEADER>m - [ ] <Enter><++><ESC>kA
autocmd Filetype markdown inoremap <buffer> <LEADER>p ![](<++>) <++><Esc>F[a
autocmd Filetype markdown inoremap <buffer> <LEADER>a [](<++>) <++><Esc>F[a
autocmd Filetype markdown inoremap <buffer> <LEADER>1 #<Space><Enter><++><Esc>kA
autocmd Filetype markdown inoremap <buffer> <LEADER>2 ##<Space><Enter><++><Esc>kA
autocmd Filetype markdown inoremap <buffer> <LEADER>3 ###<Space><Enter><++><Esc>kA
autocmd Filetype markdown inoremap <buffer> <LEADER>4 ####<Space><Enter><++><Esc>kA
autocmd Filetype markdown inoremap <buffer> <LEADER>5 #####<Space><Enter><++><Esc>kA
autocmd Filetype markdown inoremap <buffer> <LEADER>6 ######<Space><Enter><++><Esc>kA
autocmd Filetype markdown inoremap <buffer> <LEADER>l --------<Enter>
" get correct comment of json file
autocmd FileType json syntax match Comment +\/\/.\+$+
