:set number
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a

call plug#begin()

Plug 'http://github.com/tpope/vim-surround'

Plug 'https://github.com/preservim/nerdtree'

Plug 'https://github.com/tpope/vim-commentary'

Plug 'https://github.com/vim-airline/vim-airline'

Plug 'https://github.com/ap/vim-css-color'

Plug 'https://github.com/rafi/awesome-vim-colorschemes'

Plug 'https://github.com/ryanoasis/vim-devicons'

Plug 'https://github.com/tc50cal/vim-terminal'

Plug 'https://github.com/terryma/vim-multiple-cursors'

Plug 'https://github.com/preservim/tagbar'

Plug 'https://github.com/neoclide/coc.nvim'

set encoding=UTF-8

call plug#end()

nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTreeFocus<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-l> :call CocActionAsync('jumpDefinition')<CR>

nmap <F8> :TagbarToggle<CR>

:colorscheme jellybeans

let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"

" --- Just Some Notes ---
" :PlugClean :PlugInstall :UpdateRemotePlugins
"
" :echo stdpath('data')
" 
" Go back to terminal...
" cd into that data directory...
"
" (Note: for me the data directory was ~/.local/share/nvim/plugged)
"
" <you>@<hostname> <data>/coc.nvim $npm i && yarn install
"
" Make sure you have nodejs, npm, and yarn installed
" on your system. Once you do, run npm install and 
" yarn install in the data directory's coc.nvim directory
"
" :CocInstall coc-python
" :CocInstall coc-clangd
" :CocInstall coc-tsserver
" :CocInstall coc-rust-analyzer
" :CocInstall coc-sh 
" :CocInstall coc-snippets
" :CocCommand snippets.edit... FOR EACH FILE TYPE

" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"
