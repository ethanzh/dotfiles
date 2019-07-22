" Basic navigation things
filetype on
syntax on
set number
set relativenumber

" Fix weird backspace behavior
set backspace=indent,eol,start

silent! if plug#begin('~/.vim/plugged')
Plug 'mhinz/vim-startify'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'airblade/vim-gitgutter'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ervandew/supertab'
Plug 'vim-python/python-syntax'
Plug 'python/black'
call plug#end()
endif

let g:airline_theme='atomic'
let g:airline#extensions#whitespace#enabled = 0

let g:pymode_python = 'python3'
let g:python_highlight_all = 1

hi Search cterm=NONE ctermfg=red ctermbg=blue

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

" C indenting
autocmd Filetype c setlocal autoindent cindent expandtab tabstop=2 shiftwidth=2 softtabstop=2

" Damian Conway's Die Blinkënmatchen: highlight matches
nnoremap <silent> n n:call HLNext(0.1)<cr>
nnoremap <silent> N N:call HLNext(0.1)<cr>

function! HLNext (blinktime)
  let target_pat = '\c\%#'.@/
  let ring = matchadd('ErrorMsg', target_pat, 101)
  redraw
  exec 'sleep ' . float2nr(a:blinktime * 1000) . 'm'
  call matchdelete(ring)
  redraw
endfunction
