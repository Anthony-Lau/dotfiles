set number
set list
set relativenumber

call plug#begin('~/.vim/plugged')

Plug 'preservim/nerdtree'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'rakr/vim-one'
Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

colorscheme one
set background=dark

" toggle nerd tree
map <C-n> :NERDTreeToggle<CR>
" nerd tree on right
let g:NERDTreeWinPos = "right"
" close all vim panes if nerdtree is last
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" show hidden files in nerdtree
let NERDTreeShowHidden=1

" map pane movement
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
