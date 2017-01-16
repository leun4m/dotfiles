set term=screen-256color

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

"nnoremap <up> <nop>
"nnoremap <down> <nop>
"nnoremap <left> <nop>
"nnoremap <right> <nop>

set number

" -- Plugins --
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'

"syntax highliting
colo slate
syntax on

