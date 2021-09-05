call plug#begin(stdpath('data') . '/plugged')

Plug 'junegunn/vim-easy-align'
Plug 'preservim/nerdcommenter'
Plug 'Yggdroot/LeaderF', { 'do': ':LeaderfInstallCExtension' }

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/completion-nvim'

call plug#end()


autocmd BufEnter * lua require'completion'.on_attach()

lua << EOF
  require'lspconfig'.pyright.setup{}
EOF
