" Pathogen
execute pathogen#infect()

" Nerd tree toggle
map <C-o> :NERDTreeToggle<CR>

" Basic navigation things
filetype on
syntax on
set number
set relativenumber
set number

" Explorer stuff
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25
augroup ProjectDrawer
  autocmd!
  autocmd VimEnter * :Vexplore
augroup END

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
let g:go_version_warning = 0
let g:go_highlight_function_calls = 1

" Colors
colorscheme gruvbox
set bg=dark
let g:gruvbox_contrast_dark = 'hard'

" C indenting
autocmd Filetype c setlocal autoindent cindent expandtab tabstop=2 shiftwidth=2 softtabstop=2

" NERDTree config
" autocmd vimenter * NERDTree

" Test comment from Mac to Linux
execute pathogen#infect()
call pathogen#helptags()
