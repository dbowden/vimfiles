""""""""""""""""""""""""""""""""""""""""""""""""
" configurations for vim on windows
""""""""""""""""""""""""""""""""""""""""""""""""
"some stuff to make pathogen automate
execute pathogen#infect()
execute pathogen#helptags()

" set consolas instead of the terrible terminal font
set guifont=Consolas:h11:cANSI

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
if has("syntax")
  syntax on
endif

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
"set background=dark

" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
if has("autocmd")
filetype plugin indent on
endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
set showcmd		" Show (partial) command in status line.
set showmatch		" Show matching brackets.
set ignorecase		" Do case insensitive matching
set smartcase		" Do smart case matching
set incsearch		" Incremental search
set autowrite		" Automatically save before commands like :next and :make
"set hidden             " Hide buffers when they are abandoned
set mouse=a		" Enable mouse usage (all modes)

" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif

filetype plugin on
set grepprg=grep\ -nH\ $*
filetype indent on
let g:tex_flavor='latex'

"solarized scheme
set background=dark
let g:solarized_termtrans=1
let g:solarized_termcolors=256
let g:solarized_contrast="high"
let g:solarized_visibility="high"
let g:solarized_menu=0
colorscheme solarized

set wrap
set linebreak
set number
set spell

"omni complete
set omnifunc=syntaxcomplete#Complete
let g:SuperTabDefaultCompletionType = "context"

" Hide mouse pointer while typing
set mousehide
set mousemodel=popup

" Code Folding, everything folded by default
set foldmethod=indent
set foldlevel=99
set foldenable

" Make mouse middle click paste without formatting it.
map <MouseMiddle> <Esc>"*p

" Highlight current line 
if has("gui_running")
  set cursorline
endif

set ttyfast

" Global by default
set gdefault

"latex plugin
set shellslash
set grepprg=grep\ -nH\ $*
let g:tex_flavor='latex'
let g:Tex_DefaultTargetFormat='pdf'
let g:Tex_MultipleCompileFormats='pdf'
let g:Tex_CompileRule_pdf = 'pdflatex --synctex=-1 -src-specials -interaction=nonstopmode $*'
let g:Tex_ViewRule_pdf = 'SumatraPDF -inverse-search "gvim -c \":RemoteOpen +\%l \%f\""'
let g:Tex_ViewRule_pdf =  'SumatraPDF -reuse-instance '

"r plugin
set nocompatible
let vimrplugin_r_path = "C:\\Program Files\\R\\R-3.0.2\\bin\\x64"
let vimrplugin_latexcmd = "pdflatex"

"use cygwin instead of ms shell
"set shell=C:/cygwin/bin/bash
"set shellcmdflag=--login\ -c
"set shellxquote=\"

"tabbed browsing
set showtabline=2

"make backspace work properly
set backspace=2
set guioptions-=T  "remove toolbar

"remap leader
let mapleader = ","
let maplocalleader = mapleader

let g:pandoc_bibfiles = ['~/Desktop/Dropbox/library.bib']

au BufNewFile,BufRead *.Rmd   set filetype=pandoc

set linespace=3
