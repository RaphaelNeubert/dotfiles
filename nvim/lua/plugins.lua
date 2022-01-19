

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
end)
