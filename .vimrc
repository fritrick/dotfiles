" Notice: install https://github.com/VundleVim/Vundle.vim before
" Notice: install https://github.com/tomasr/molokai before

" basic settings

set number
set linebreak
" set showbreak=+++
set textwidth=100
set showmatch
set visualbell
set colorcolumn=120

set hlsearch
set smartcase
set ignorecase
set incsearch

set autoindent
set tabstop=4
set shiftwidth=4
set smartindent
set smarttab
set softtabstop=4

set confirm
set ruler

set autochdir

set undolevels=1000
set backspace=indent,eol,start

filetype plugin indent on
syntax on
colorscheme molokai

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'fatih/vim-go'
Plugin 'preservim/nerdtree'
Plugin 'mileszs/ack.vim'
Plugin 'airblade/vim-gitgutter'


call vundle#end()            " required
filetype plugin indent on    " required

" ag
let g:ackprg = 'ag --nogroup --nocolor --column'

" nerd-tree setup
map <C-n> :NERDTreeToggle<CR>
let NERDTreeMapOpenInTab='<ENTER>'

" godef config
let g:go_def_mode = 'godef'
let g:godef_split=2
let g:godef_same_file_in_same_window=1

autocmd BufWritePost * GitGutter
let g:gitgutter_highlight_lines = 1

" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif
