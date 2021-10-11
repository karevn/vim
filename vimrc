set noswapfile


" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugins')

Plug 'https://github.com/tpope/vim-sensible.git'
Plug 'https://github.com/kaicataldo/material.vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'preservim/nerdcommenter'
Plug 'https://github.com/neoclide/coc.nvim.git'
Plug 'https://github.com/tpope/vim-fugitive.git'
Plug 'https://github.com/airblade/vim-gitgutter.git'
Plug 'https://github.com/vim-airline/vim-airline.git'
Plug 'https://github.com/ryanoasis/vim-devicons.git'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'antoinemadec/coc-fzf', {'branch': 'release'}
Plug 'plasticboy/vim-markdown'

call plug#end()

" Folding
set foldmethod=indent
set foldnestmax=2

" COC
let g:coc_global_extensions = ['coc-tsserver', 'coc-json', 'coc-pairs']

" Color scheme
colorscheme material
let g:material_theme_style = 'palenight'
if (has("termguicolors"))
  set termguicolors
endif
set background=dark

" Required:
filetype plugin indent on
syntax enable

set autoindent
set smartindent
set cindent

set expandtab
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set wildignore=*.pyc

set ignorecase
set smartcase
set hlsearch
set incsearch
set shiftround

set history=1000
set undolevels=1000
set nobackup

" Line numbers
set linespace=3
set number relativenumber
augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu && mode() != "i" | set rnu   | endif
  autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu                  | set nornu | endif
augroup END
