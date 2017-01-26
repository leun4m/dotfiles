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

set laststatus=2
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

set mouse=a
" -- Beep --
"Prevent Vim from beepingOB
set visualbell  
set noerrorbells

" -- Plugins --

set rtp+=~/.vim/bundle/Vundle.vim

"Plugin 'Valloric/YouCompleteMe'
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'altercation/vim-colors-solarized'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'Raimondi/delimitMate'
call vundle#end()

set updatetime=250  "for gitgutter

" Open/close NERDTree Tabs with \t
nmap <silent> <leader>t :NERDTreeTabsToggle<CR>
" To have NERDTree always open on startup
let g:nerdtree_tabs_open_on_console_startup = 1

" ----- Raimondi/delimitMate settings -----
let delimitMate_expand_cr = 1
augroup mydelimitMate
  au!
  au FileType markdown let b:delimitMate_nesting_quotes = ["`"]
  au FileType tex let b:delimitMate_quotes = ""
  au FileType tex let b:delimitMate_matchpairs = "(:),[:],{:},`:'"
  au FileType python let b:delimitMate_nesting_quotes = ['"', "'"]
augroup END

" -- Syntax highliting --
set background=dark
colorscheme solarized
syntax on

filetype on
filetype plugin on
filetype indent on
