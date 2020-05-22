set mouse=a

" enter the current millenium
set nocompatible

" enable syntax and plugins (for netrw)
syntax enable
filetype plugin on

" Search down into subfolders
" Provides tab-completion for all file-related tasks
set path+=**

" Display all matching files when we tab complete
set wildmenu

call plug#begin('~/.vim/plugged')

Plug 'universal-ctags/ctags'
Plug 'mileszs/ack.vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-sensible'
Plug 'itchyny/lightline.vim'
Plug 'valloric/youCompleteMe', { 'do': './install.py' }
Plug 'drewtempelmeyer/palenight.vim'

call plug#end()

set ignorecase
set smartcase
set laststatus=2
:colorscheme palenight
set background=dark
map <C-o> :NERDTreeToggle<CR>
set tags=./tags,tags;$WORK
filetype plugin on
