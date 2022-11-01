

return require('packer').startup(function()
    use 'wbthomason/packer.nvim'
    use {'p00f/cphelper.nvim', rocks = 'http', requires = 'nvim-lua/plenary.nvim'}
    use 'sainnhe/gruvbox-material'
    use 'nvim-lua/popup.nvim'
    use 'nvim-lua/plenary.nvim'
    use 'ThePrimeagen/harpoon'
    use {
        'marioortizmanero/adoc-pdf-live.nvim',
        config = "require('config.adoc_pdf_live')",
    }
    use "hsanson/vim-android"
    use {
      'nvim-telescope/telescope.nvim',
      requires = { {'nvim-lua/plenary.nvim'} }
    }
    use 'shaunsingh/solarized.nvim'
    use "williamboman/nvim-lsp-installer"
    use 'neovim/nvim-lspconfig'
    use "hrsh7th/nvim-cmp"
    use "hrsh7th/cmp-buffer"
    use "hrsh7th/cmp-path"
    use "hrsh7th/cmp-nvim-lsp"
    use "quangnguyen30192/cmp-nvim-ultisnips"
    use "mfussenegger/nvim-jdtls"

end)

