"set term=screen-256color

set nocompatible

" -- Display --
set title
set number
set ruler
set wrap

set scrolloff=3
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab


"Hide buffer
set hidden

" -- Search --
set ignorecase  "Ignore case when searching
set smartcase   "If uppercase in search term=>case sensitive

set incsearch   "Highlight results when typing
set hlsearch    "Highlight results

" -- Keys --
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>

:imap ;; <Esc> 
"Backspace behaves as expected
set backspace=indent,eol,start

" -- Beep --
"Prevent Vim from beepingOB
set visualbell  
set noerrorbells

" -- Plugins --

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'

" -- Syntax highliting --
set background=dark
colorscheme solarized
syntax on

filetype on
filetype plugin on
filetype indent on
