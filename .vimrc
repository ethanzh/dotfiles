" Basic navigation things
filetype on
syntax on
set number
set relativenumber
set number

" Go stuff
call plug#begin()
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
call plug#end()
let g:go_highlight_structs = 1
let g:go_highlight_methods = 1
let g:go_highlight_functions = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_function_calls = 1

" Colors
colorscheme gruvbox
set bg=dark
let g:gruvbox_contrast_dark = 'hard'

" C indenting
autocmd Filetype c setlocal autoindent cindent expandtab tabstop=2 shiftwidth=2 softtabstop=2

" Test comment from Mac to Linux
