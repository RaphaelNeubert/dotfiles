

return require('packer').startup(function()
    use 'wbthomason/packer.nvim'
    use {'p00f/cphelper.nvim', rocks = 'http', requires = 'nvim-lua/plenary.nvim'}
    use {
        'marioortizmanero/adoc-pdf-live.nvim',
        config = "require('adoc_pdf_live').setup()"
    }
    use 'sainnhe/gruvbox-material'
    use 'nvim-lua/popup.nvim'
    use 'nvim-lua/plenary.nvim'
    use 'ThePrimeagen/harpoon'
    use {
        'marioortizmanero/adoc-pdf-live.nvim',
        config = "require('adoc_pdf_live').setup { \
                    enabled = false, \
                    viewer = 'zathura',\
                    binary = 'asciidoctor',\
                    params = '-r asciidoctor-pdf -b pdf',\
                    debug = false,\
                    style = '',\
                    style_regex = 'style\\\\.ya?ml'\
                }"
    }
    use "hsanson/vim-android"
    use {
      'nvim-telescope/telescope.nvim',
      requires = { {'nvim-lua/plenary.nvim'} }
    }
end)

