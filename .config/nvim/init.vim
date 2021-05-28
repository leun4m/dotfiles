set number
set relativenumber
set autoindent

set clipboard=unnamedplus

call plug#begin()

Plug 'itchyny/lightline.vim'
Plug 'junegunn/goyo.vim'
Plug 'morhetz/gruvbox'
Plug 'JamshedVesuna/vim-markdown-preview'
Plug 'conornewton/vim-pandoc-markdown-preview'
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'
Plug 'tpope/vim-surround'
Plug 'preservim/nerdtree'

Plug 'leun4m/tex-conceal.vim', {'for': 'tex'}
Plug 'airblade/vim-gitgutter'
"Plug 'davidhalter/jedi-vim'
Plug 'valloric/youcompleteme' 
Plug 'editorconfig/editorconfig-vim'
call plug#end()

" Lightline replaces showmode 
set noshowmode

" Gruvbox config
let g:gruvbox_contrast_dark = 'hard'
colorscheme gruvbox
highlight Normal ctermbg=None

" Markdown Preview
let vim_markdown_preview_github = 1 
" Pandoc
set nofoldenable
let g:pandoc#spell#enabled = 0
let g:pandoc#formatting#equalprg = "pandoc -t markdown --reference-links --wrap=none"
let g:pandoc#syntax#codeblocks#embeds#langs = ["html", "css", "javascript", "python", "latex", "bash=sh", "sh"]

" YouCompleteMe
let g:ycm_filetype_blacklist = {
			\ 'tagbar': 1,
			\ 'notes': 1,
			\ 'markdown': 1,
			\ 'netrw': 1,
			\ 'unite': 1,
			\ 'text': 1,
			\ 'vimwiki': 1,
			\ 'pandoc': 1,
			\ 'infolog': 1,
			\ 'leaderf': 1,
			\ 'mail': 1,
			\ 'chordpro': 1
			\}

" Jedi IDE
let g:jedi#auto_initialization = 0

let mapleader = "-"

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <leader>b :NERDTreeToggle<CR>


function! UseTabs()
	set tabstop=4		" Size of a hard tabstop
	" 	set shiftwidth=4	" Size of an idention
	set softtabstop=0	" Insert 0 spaces on TAB
	set noexpandtab		" Always uses tabs instead of spaces
endfunction

function! WriterMode()
	Goyo 80x50
	set spell
	set spelllang=de
endfunction

" call UseTabs()

autocmd Filetype yaml setlocal tabstop=4

let g:md_pdf_viewer="mupdf-x11"
let g:md_args="--template eisvogel --listings"

