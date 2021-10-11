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

set foldmethod=indent
set foldnestmax=2

" COC
let g:coc_global_extensions = ['coc-tsserver', 'coc-json', 'coc-pairs']

colorscheme material
let g:material_theme_style = 'palenight'
if (has("termguicolors"))
  set termguicolors
endif
set background=dark

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
"if dein#check_install()
"  call dein#install()
"endif

"End dein Scripts-------------------------


set number relativenumber
augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu && mode() != "i" | set rnu   | endif
  autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu                  | set nornu | endif
augroup END
