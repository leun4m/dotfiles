return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use 'sainnhe/gruvbox-material'

    use 'itchyny/lightline.vim'
    use 'junegunn/goyo.vim'
    use 'preservim/nerdtree'

    use 'KeitaNakamura/tex-conceal.vim'
    use 'airblade/vim-gitgutter'
    use 'editorconfig/editorconfig-vim'

    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.2',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }

    use 'neovim/nvim-lspconfig'
    use 'williamboman/mason.nvim'
    use 'williamboman/mason-lspconfig.nvim'
end)
