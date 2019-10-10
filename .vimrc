filetype on
syntax on
set number
set relativenumber

let mapleader = ","

nnoremap <C-c> :close<CR>

set tags=tags;/
nnoremap <leader>. :CtrlPTag<cr>
nnoremap <silent> <Leader>b :TagbarToggle<CR>

set backspace=indent,eol,start

set foldmethod=indent
set foldlevel=20

command! MakeTags !ctags -R .

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
Plug 'majutsushi/tagbar'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'dracula/vim', { 'as': 'dracula' }
call plug#end()
endif

let g:airline_theme='atomic'
let g:airline#extensions#whitespace#enabled = 0

let g:pymode_python = 'python3'
let g:python_highlight_all = 1

autocmd! bufwritepost .vimrc source %

autocmd FileType javascript setlocal ts=2 sts=2 sw=2

set incsearch
set hlsearch
nnoremap <C-l> :nohlsearch<CR><C-l>
hi Search cterm=NONE ctermfg=red ctermbg=blue

set bs=2

set updatetime=150

nnoremap ; :

let g:netrw_banner = 0

highlight ColorColumn ctermbg=grey
call matchadd('ColorColumn', '\%81v', 100)

autocmd Filetype c setlocal autoindent cindent expandtab tabstop=2 shiftwidth=2 softtabstop=2

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
