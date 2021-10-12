call plug#begin(stdpath('data') . '/plugged')
Plug 'tpope/vim-sensible'
Plug 'ycm-core/YouCompleteMe', { 'do': './install.py' }
Plug 'elzr/vim-json'
call plug#end()
set relativenumber
