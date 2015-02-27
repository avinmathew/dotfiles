set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

Bundle 'altercation/vim-colors-solarized'
Bundle 'kchmck/vim-coffee-script'
Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Bundle 'scrooloose/nerdtree'
Bundle 'tpope/vim-fugitive'
Bundle 'vim-scripts/tComment'
Bundle 'git://git.wincent.com/command-t.git'

" Load NERDTree on startup
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd w

" Close NERDTree if it's the last remaining buffer
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

set background=dark
colorscheme solarized
syntax enable

filetype plugin indent on

set laststatus=2
set t_Co=256
let g:Powerline_symbols = "fancy"

map <leader>c <c-_><c-_>

" Flash instead of bell
set visualbell

" Line numbering
set number

set mouse=a

" Spaces instead of tabs
set expandtab

" 1 tab = 2 spaces
set tabstop=2
set shiftwidth=2

" Display whitespace
set list listchars=tab:»·,trail:·

" Case insensitive search
set ignorecase

" Use case sensitive search if specifically requested
set smartcase

" Jump to search word as you type
set incsearch

" Highlight search results
set hlsearch

" Show matching brackets
set showmatch

" Turn back off since files are in git
set nobackup
set nowritebackup
set noswapfile

