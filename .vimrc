silent! if plug#begin('~/.vim/plugged')
Plug 'mhinz/vim-startify'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'airblade/vim-gitgutter'
"Plug 'scrooloose/syntastic'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ervandew/supertab'
call plug#end()
endif

let g:airline_theme='atomic'

" Automatic reloading of .vimrc
autocmd! bufwritepost .vimrc source %

"JS tabs
autocmd FileType javascript setlocal ts=2 sts=2 sw=2

" Search highlighting
set incsearch
set hlsearch
nnoremap <C-l> :nohlsearch<CR><C-l>

" Fix backspace
set bs=2

" time for git gutter
set updatetime=150

"Remap ; to :
nnoremap ; :

"Netrw stuff
let g:netrw_banner = 0

"Color column
highlight ColorColumn ctermbg=white
call matchadd('ColorColumn', '\%81v', 100)

" Fix weird backspace behavior
set backspace=indent,eol,start

" Basic navigation things
filetype on
syntax on
set number
set relativenumber

" C indenting
autocmd Filetype c setlocal autoindent cindent expandtab tabstop=2 shiftwidth=2 softtabstop=2

