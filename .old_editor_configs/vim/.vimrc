set nocompatible

" disable arrow keys
nnoremap <up> <nop>
nnoremap <down> <nop> 
nnoremap <left> <nop> 
nnoremap <right> <nop> 

xnoremap <up> <nop> 
xnoremap <down> <nop> 
xnoremap <left> <nop> 
xnoremap <right> <nop> 

inoremap <up> <nop>
inoremap <down> <nop> 
inoremap <left> <nop> 
inoremap <right> <nop> 

" remap Esc for insert mode
inoremap jj

" move cursor in insert mode
inoremap ll <right>
inoremap hh <left>

"===========================================
"" general settings
"===========================================
set rnu
set nowrap
set wildmenu

set tabstop=4       " 4 whitespaces for tabs visual presentation
set shiftwidth=4    " shift lines by 4 spaces
set expandtab       " expand tabs into spaces

set showmatch       " shows matching part of bracket pairs (), [], {}

set nobackup
set nowritebackup
set noswapfile

"===========================================
" search settings
"===========================================
set incsearch
set hlsearch


