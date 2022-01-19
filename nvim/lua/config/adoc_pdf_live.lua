require('adoc_pdf_live').setup { 
    enabled = false, 
    viewer = 'zathura',
    binary = 'asciidoctor',
    params = '-r asciidoctor-pdf -b pdf',
    debug = false,
    style = '',
    style_regex = 'style\\.ya?ml'
}
