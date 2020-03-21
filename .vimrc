set number
set list
set relativenumber

call plug#begin('~/.vim/plugged')

Plug 'preservim/nerdtree'
Plug 'drewtempelmeyer/palenight.vim'

call plug#end()

colorscheme one

" toggle nerd tree
map <C-n> :NERDTreeToggle<CR>
" nerd tree on right
let g:NERDTreeWinPos = "right"
" close all vim panes if nerdtree is last
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" map pane movement
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l