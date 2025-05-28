set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Other plugins
Plugin 'tpope/vim-fugitive'               " git info
Plugin 'scrooloose/nerdtree'              " file explorer
Plugin 'w0rp/ale'                         " linter
Plugin 'kien/ctrlp.vim'                   " fuzzy search
Plugin 'lifepillar/vim-solarized8'        " color theme
Plugin 'scrooloose/nerdcommenter'         " comments
Plugin 'bling/vim-airline'                " status line
Plugin 'ervandew/supertab'                " auto completion
Plugin 'sheerun/vim-polyglot'             " language packs
Plugin 'psf/black'                        " python black formatter

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" turn on syntax highlighting (solarized)
syntax enable
set background=dark
let g:solarized_termtrans = 1
silent! colorscheme solarized8

" linter settings
let g:ale_fixers = {
\   'python': ['isort'],
\   'javascript': ['prettier', 'eslint'],
\   'javascriptreact': ['prettier', 'eslint'],
\   'typescript': ['prettier', 'eslint'],
\   'typescriptreact': ['prettier', 'eslint'],
\   'css': ['prettier', 'stylelint'],
\}
let g:ale_fix_on_save = 1
let g:ale_completion_enabled = 1

" nerdtree plugin settings
let mapleader = "\\"
nmap <leader>d :NERDTreeToggle<cr>

" black python formatter settings
autocmd BufWritePre *.py execute ':Black'

" set indent to be 4 spaces
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

" fix delete
set backspace=indent,eol,start

" tabs
map <C-h> <ESC>:tabp<CR>
imap <C-h> <ESC>:tabp<CR>
map <C-t> <ESC>:tabnew
imap <C-t> <ESC>:tabnew
map <C-l> <ESC>:tabn<CR>
imap <C-l> <ESC>:tabn<CR>
