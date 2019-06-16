nnoremap <C-U> :call SmoothScroll(1)<Enter>
nnoremap <C-D> :call SmoothScroll(0)<Enter>
inoremap <C-U> <Esc>:call SmoothScroll(1)<Enter>i
inoremap <C-D> <Esc>:call SmoothScroll(0)<Enter>i

set mouse=a
 map <ScrollWheelUp> <C-Y>
 map <ScrollWheelDown> <C-E>

" Automatic reloading of .vimrc
autocmd! bufwritepost .vimrc source %

" Fix backspace
set bs=2

" Test 

" Protect swp file
augroup NoSimultaneousEdits
	autocmd!
	autocmd SwapExists * let v:swapchoice = 'o'
	autocmd SwapExists * echomsg ErrorMsg
	autocmd SwapExists * echo 'Duplicate edit session (readonly)'
	autocmd SwapExists * echohl None
augroup END

"Remap ; to :
nnoremap ; :

"Matches
nnoremap <silent> n	n:call HLNext(0.4)<cr>
nnoremap <silent> N	N:call HLNext(0.4)<cr>

function! HLNext (blinktime)
		set invcursorline
		redraw
		exec 'sleep ' . float2nr(a:blinktime * 1000) . 'm'
		set invcursorline
		redraw
endfunction

"Color column
highlight ColorColumn ctermbg=magenta
call matchadd('ColorColumn', '\%81v', 100)

"The Leader
let mapleader="\<Space>"
"save current buffer
nnoremap <leader>w :w<cr>

" Pathogen
execute pathogen#infect()

set backspace=indent,eol,start

" Nerd tree toggle
map <C-o> :NERDTreeToggle<CR>

set colorcolumn=80

" Basic navigation things
filetype on
syntax on
set number
set relativenumber
set number


" Explorer stuff
"let g:netrw_banner = 0
"let g:netrw_liststyle = 0 "3
"let g:netrw_browse_split = 4
"let g:netrw_altv = 1
"let g:netrw_winsize = 25
"augroup ProjectDrawer
"  autocmd!
"  autocmd VimEnter * :Vexplore
"augroup END
"autocmd FileType netrw setl bufhidden=wipe
"aug netrw_close
"  au!
"  au WinEnter * if winnr('$') == 1 && getbufvar(winbufnr(winnr()), "&filetype") == "netrw"|q|endif
"aug END
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
Plug 'python/black'
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

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
let g:black_virtualenv="~/.vim_black"
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
"Plugin 'python/black'
Plugin 'ambv/black'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
