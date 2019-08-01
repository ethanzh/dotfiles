" Basic navigation things
filetype on
syntax on
set number
set relativenumber

" File finder
set path+=**
set wildmenu

" Leader
let mapleader = ","

au BufEnter * call MyLastWindow()
function! MyLastWindow()
  " if the window is quickfix go on
  if &buftype=="quickfix"
    " if this window is last on screen quit without warning
    if winbufnr(2) == -1
      quit!
    endif
  endif
endfunction

command GREP :execute 'vimgrep '.expand('<cword>').' '.expand('%') | :copen | :cc
nnoremap g :GREP<CR>
nnoremap <C-j>      :cnext<CR>
nnoremap <C-k>     :cprev<CR>

" Tag
set tags=tags;/
nnoremap <leader>. :CtrlPTag<cr>
nnoremap <silent> <Leader>b :TagbarToggle<CR>

" Fix weird backspace behavior
set backspace=indent,eol,start

" Folding
set foldmethod=indent
set foldlevel=20

" Tags
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
call plug#end()
endif

let g:airline_theme='atomic'
let g:airline#extensions#whitespace#enabled = 0

let g:pymode_python = 'python3'
let g:python_highlight_all = 1

" Automatic reloading of .vimrc
autocmd! bufwritepost .vimrc source %

"JS tabs
autocmd FileType javascript setlocal ts=2 sts=2 sw=2

" Search highlighting
set incsearch
set hlsearch
nnoremap <C-l> :nohlsearch<CR><C-l>
hi Search cterm=NONE ctermfg=red ctermbg=blue

" Fix backspace
set bs=2

" time for git gutter
set updatetime=150

"Remap ; to :
nnoremap ; :

"Netrw stuff
let g:netrw_banner = 0

"Color column
highlight ColorColumn ctermbg=grey
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
