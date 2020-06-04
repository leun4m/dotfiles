set number
" set relativenumber

set autoindent

call plug#begin()

Plug 'itchyny/lightline.vim'
Plug 'junegunn/goyo.vim'
Plug 'morhetz/gruvbox'
Plug 'JamshedVesuna/vim-markdown-preview'
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'

Plug 'leun4m/tex-conceal.vim', {'for': 'tex'}
Plug 'airblade/vim-gitgutter'
" Plug 'davidhalter/jedi-vim'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
call plug#end()

" Gruvbox config
let g:gruvbox_contrast_dark = 'hard'
colorscheme gruvbox
highlight Normal ctermbg=None

" Markdown Preview
let vim_markdown_preview_github = 1

" Pandoc
set nofoldenable
let g:pandoc#formatting#equalprg = "pandoc -t markdown --reference-links --wrap=none"

" Jedi IDE
let g:jedi#auto_initialization = 0

function! UseTabs()
	set tabstop=4		" Size of a hard tabstop
	set shiftwidth=4	" Size of an idention
	set softtabstop=0	" Insert 0 spaces on TAB
	set noexpandtab		" Always uses tabs instead of spaces
endfunction

function! WriterMode()
	Goyo 80x50
	set spelllang=de
endfunction

call UseTabs()
