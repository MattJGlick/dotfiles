" plugins
call plug#begin('~/.vim/plugged')
"NERD Tree for File Navigation
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
" Ctrl P for finding files quickly
Plug 'kien/ctrlp.vim'
" color scheme
Plug 'mhinz/vim-janah'
" relative line numbers
Plug 'myusuf3/numbers.vim'
" nice vim status bar 
Plug 'bling/vim-airline'
" mustache plugin
Plug 'mustache/vim-mustache-handlebars'
call plug#end()

"syntax processing
syntax on
filetype plugin indent on

" color scheme
autocmd ColorScheme janah highlight Normal ctermbg=235
colorscheme janah

" Use english for spellchecking
set spl=en spell
set nospell


""" Leader Stuff
" Make space my leader key
let mapleader = "\<Space>"

" Open up files
nnoremap <Leader>o :CtrlP<CR>
" Save files
nnoremap <Leader>w :w<CR>
" Quit Files
nnoremap <Leader>q :q<CR>
" copy to clipboard
vmap <Leader>y "+y
" refresh source
nmap <Leader>s :source ~/.vimrc<CR>
" turn off search highlight
nnoremap <leader>/ :nohlsearch<CR>
" toggle NERDTREE
nnoremap <leader>n :NERDTreeToggle<CR>
" jump to matching bracket/curly brace
nnoremap <leader>v v%
" redo an undo
nnoremap <leader>r <C-r>

" show command in bottom bar
set showcmd

" Soft tabs
set expandtab
set number
set shiftwidth=4
set softtabstop=0
set softtabstop=4
set tabstop=4

" Make vim redrawing much faster
set lazyredraw
set ttyfast

" current line highlighting
set cursorline

" highlight matching [{
set showmatch

" Ignore case on search unless search has uppercase characters
set ignorecase
set smartcase

""" searching
" search as characters are entered
set incsearch
" highlight matches
set hlsearch

" Set relative line numbers
set number

" make a nice status bar appear all of the time
set laststatus=2

" move the swap files and such to directories inside of vim
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undodir=~/.vim/undo//

" map the ESC key to jj to prevent having to hit it constantly
:imap jj <Esc>

let g:airline_powerline_fonts = 1

" Use handlebars syntax highlighting for dataviews
au BufRead,BufNewFile *.dataview setf handlebars
