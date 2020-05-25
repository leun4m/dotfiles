set number
"set relativenumber

call plug#begin()

Plug 'itchyny/lightline.vim'
Plug 'junegunn/goyo.vim'
Plug 'morhetz/gruvbox'
Plug 'JamshedVesuna/vim-markdown-preview'
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'

call plug#end()

" Gruvbox config
let g:gruvbox_contrast_dark = 'hard'
colorscheme gruvbox

" Markdown Preview
let vim_markdown_preview_github=1

" Pandoc
set nofoldenable
let g:pandoc#formatting#equalprg = "pandoc -t markdown --reference-links --wrap=none"

