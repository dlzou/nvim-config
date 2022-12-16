" vim:foldmethod=marker

" Settings {{{

set mouse=a
set updatetime=500
set notimeout
set hidden
set splitright

set number

" Default tab settings, overridden by tpope/vim-sleuth
set expandtab  " Use spaces insteads of tabs
set shiftwidth=4
set tabstop=4
set softtabstop=4
set autoindent  " Indent on new line

" }}}

" Global key bindings {{{

nnoremap <expr> j (v:count == 0 ? 'gj' : 'j')
xnoremap <expr> j (v:count == 0 ? 'gj' : 'j')
nnoremap <expr> k (v:count == 0 ? 'gk' : 'k')
xnoremap <expr> k (v:count == 0 ? 'gk' : 'k')

nnoremap <C-z> <nop>
nnoremap p p=`]
nnoremap P P=`[
xnoremap <C-c> "+y
cnoremap <C-v> <C-r>+
inoremap <C-v> <C-g>u<C-r>+
inoremap <CR> <CR><C-g>u

inoremap <C-d> <Del>
inoremap <C-f> <Right>
inoremap <C-b> <Left>
inoremap <C-p> <Up>
inoremap <C-n> <Down>
inoremap <C-a> <C-o>^
inoremap <C-e> <C-o>$

" }}}

" Plugins {{{

lua require('plugins')

let g:AutoPairsCenterLine = 0
let g:AutoPairsMultilineClose = 0

" }}}
