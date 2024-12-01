" Use system clipboard
set clipboard=unnamedplus

" Configure tabs to be 4 spaces
set tabstop=4
set shiftwidth=4
set expandtab

" Bind Control + A to select everything
nnoremap <C-a> ggVG

" Disable the -- INSERT -- thing
set noshowmode

" Enable plugins
call plug#begin()

Plug 'vim-airline/vim-airline'
Plug 'jiangmiao/auto-pairs'
Plug 'lervag/vimtex'
Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'
Plug 'neovim/nvim-lspconfig'

call plug#end()
" Install with :PlugInstall and update with :PlugUpdate

" Make certain syntax things work
syntax enable
filetype plugin indent on

" Make Mason work
lua require("mason").setup()
lua require("mason-lspconfig").setup()

" Make the VimTeX plugin work
let g:vimtex_view_method = 'zathura'

" Enable transparent background
let g:gruvbit_transp_bg = v:true

" Use Gruvbit theme
set termguicolors
colorscheme gruvbit

