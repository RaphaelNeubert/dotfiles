



call plug#begin('~/.nvim/plugged')
Plug 'lervag/vimtex'
Plug 'sirver/ultisnips'
"Plug 'sainnhe/gruvbox-material'
"Plug 'nvim-lua/popup.nvim'
"Plug 'nvim-lua/plenary.nvim'
"Plug 'ThePrimeagen/harpoon'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }}
call plug#end()

lua require ('plugins')

let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
set conceallevel=0
let g:tex_conceal='abdmg'

let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'

 let g:cphdir = 'fun/cp'

" always use this environment (independent of the terminals python env or virtual envs)
let g:python_host_prog  = '/usr/bin/python'
let g:python3_host_prog  = '/usr/bin/python'

set number relativenumber
syntax on
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set clipboard+=unnamedplus
set wildmode=longest,list,full
set autoindent
set smartindent
set incsearch
colorscheme gruvbox-material

autocmd filetype c nnoremap <f5> :w <bar> !gcc -Wall % && ./a.out <CR>
autocmd filetype cpp nnoremap <f5> :w <bar> !g++ -Wall % && ./a.out <CR>
autocmd filetype c nnoremap <f2> :w <bar> !make && ./main <CR>
autocmd filetype cpp nnoremap <f2> :w <bar> !make && ./main <CR>
autocmd filetype java nnoremap <f5> :w <bar> !javac % && java %:r <CR>
autocmd filetype java nnoremap <f2> :w <bar> !(cd ..; make) <CR>
autocmd filetype python nnoremap <f5> :w <bar> !python % <CR>
autocmd filetype tex nnoremap <f5> :w <bar> :VimtexCompile <CR>
autocmd filetype md nnoremap <M-m> :MarkdownPreview<CR>
autocmd filetype adoc nnoremap <f2> :w <bar> :AdocPdfLiveStart <bar> :AdocPdfLiveOpen <CR>
autocmd filetype adoc nnoremap <f5> :w <bar> :AdocPdfLiveStart <CR>


autocmd BufNewFile vid*.tex 0r ~/.config/nvim/templates/math.tex
autocmd BufNewFile lec*.tex 0r ~/.config/nvim/templates/math.tex

nnoremap <leader>a :lua require("harpoon.mark").add_file()<CR>
nnoremap <C-e> :lua require("harpoon.ui").toggle_quick_menu()<CR>

nnoremap <C-h> :lua require("harpoon.ui").nav_file(1)<CR>
nnoremap <C-t> :lua require("harpoon.ui").nav_file(2)<CR>
nnoremap <C-n> :lua require("harpoon.ui").nav_file(3)<CR>
nnoremap <C-s> :lua require("harpoon.ui").nav_file(4)<CR>
nnoremap <leader>tu :lua require("harpoon.term").gotoTerminal(1)<CR>
nnoremap <leader>te :lua require("harpoon.term").gotoTerminal(2)<CR>
nnoremap <leader>cu :lua require("harpoon.term").sendCommand(1, 1)<CR>
nnoremap <leader>ce :lua require("harpoon.term").sendCommand(1, 2)<CR>
" exit terminal mode using escape
tnoremap <Esc> <C-\><C-n>
