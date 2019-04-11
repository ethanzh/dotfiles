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
let g:netrw_liststyle = 0 "3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25
augroup ProjectDrawer
  autocmd!
  autocmd VimEnter * :Vexplore
augroup END
autocmd FileType netrw setl bufhidden=wipe
aug netrw_close
  au!
  au WinEnter * if winnr('$') == 1 && getbufvar(winbufnr(winnr()), "&filetype") == "netrw"|q|endif
aug END
" close if final buffer is netrw or the quickfix
augroup finalcountdown
 au!
 "autocmd WinEnter * if winnr('$') == 1 && getbufvar(winbufnr(winnr()), "&filetype") == "netrw" || &buftype == 'quickfix' |q|endif
 autocmd BufEnter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) || &buftype == 'quickfix' | q | endif
 "nmap - :Lexplore<cr>
 nmap - :NERDTreeToggle<cr>
augroup END
autocmd VimEnter * if (argc() > 0 && filereadable(argv()[0])) | wincmd l | endif

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
