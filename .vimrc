set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'altercation/vim-colors-solarized'
Bundle 'scrooloose/nerdtree'
Bundle 'ervandew/supertab'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'uarun/vim-protobuf'
Bundle 'sjl/gundo.vim'

filetype plugin indent on
syntax enable

if has('gui_running')
	set background=light
else
	set background=dark
endif
colorscheme solarized

set backspace=indent,eol,start
set relativenumber
set undofile

"Shortcuts
set showcmd
map <leader>te :tabedit
map <leader>tn :tabnext<CR>
map <leader>tp :tabprevious<CR>
map <leader>tc :tabclose<CR>
map <leader>f :NERDTreeToggle<CR>
map <leader>u :GundoToggle<CR>

"Indentation
autocmd FileType javascript,html,css,php,htmldjango set ai
autocmd FileType javascript,html,css,php,htmldjango set sw=2
autocmd FileType javascript,html,css,php,htmldjango set ts=2
autocmd FileType javascript,html,css,php,htmldjango set sts=2
autocmd FileType javascript,css,php set textwidth=79
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType htmldjango set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
au FileType python setlocal tabstop=8 expandtab shiftwidth=4 softtabstop=4

"sparkup tricks
au FileType html set ft=htmldjango
au Filetype htmldjango runtime! ftplugin/html/sparkup.vim
