" Automatic reloading of .vimrc
autocmd! bufwritepost .vimrc source %

" Fix backspace
set bs=2

" time for git gutter
set updatetime=100

"Remap ; to :
nnoremap ; :

"Color column
highlight ColorColumn ctermbg=magenta
call matchadd('ColorColumn', '\%81v', 100)

" Fix weird backspace behavior
set backspace=indent,eol,start

" Nerd tree toggle
map <C-o> :NERDTreeToggle<CR>

" Basic navigation things
filetype on
syntax on
set number
set relativenumber

" Colors
colorscheme gruvbox
set bg=dark
let g:gruvbox_contrast_dark = 'hard'

" C indenting
autocmd Filetype c setlocal autoindent cindent expandtab tabstop=2 shiftwidth=2 softtabstop=2

