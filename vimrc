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

" Soft tabs
set expandtab
set number
set shiftwidth=4
set softtabstop=0
set softtabstop=4
set tabstop=4

" current line highlighting
set cursorline

" highlight matching [{
set showmatch

" Ignore case on search unless search has uppercase characters
set ignorecase
set smartcase

" Set relative line numbers
set number

" move the swap files and such to directories inside of vim
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undodir=~/.vim/undo//

" map the ESC key to jj to prevent having to hit it constantly
:imap jj <Esc>

let g:airline_powerline_fonts = 1
