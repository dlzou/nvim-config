" vim:foldmethod=marker

" Settings {{{

if (has('termguicolors'))
  set termguicolors
endif
colorscheme palenight

set mouse=a
set updatetime=500
set notimeout
set hidden
set splitright

set number
set cursorline
set colorcolumn=101
set laststatus=3

" Default tab settings, overridden by tpope/vim-sleuth
set expandtab  " Use spaces insteads of tabs
set shiftwidth=4
set tabstop=4
set softtabstop=4
set autoindent  " Indent on new line

set list
set listchars=tab:>-,trail:!

autocmd TermOpen * setlocal nonumber

" }}}

" Global key bindings {{{

nnoremap <expr> j (v:count == 0 ? 'gj' : 'j')
xnoremap <expr> j (v:count == 0 ? 'gj' : 'j')
nnoremap <expr> k (v:count == 0 ? 'gk' : 'k')
xnoremap <expr> k (v:count == 0 ? 'gk' : 'k')

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

tnoremap <Esc> <C-\><C-n>

nmap <Space> <leader>

nnoremap <leader>c <cmd>Telescope commands<CR>

nnoremap <leader>fb <cmd>Telescope buffers<CR>
nnoremap <leader>ff <cmd>Telescope find_files<CR>
nnoremap <leader>fg <cmd>Telescope live_grep<CR>
nnoremap <leader>ft <cmd>NvimTreeToggle<CR>

nnoremap <leader>gdh <cmd>diffget //2<CR>
nnoremap <leader>gdl <cmd>diffget //3<CR>
nnoremap <leader>gv <cmd>Gvdiffsplit<CR>

nnoremap <leader>n <cmd>noh<CR>

nnoremap <leader>sc <cmd>SClose<CR>
nnoremap <leader>sd <cmd>SDelete<CR>
nnoremap <leader>sl <cmd>SLoad<CR>
nnoremap <leader>ss <cmd>SSave<CR>
nnoremap <leader>st <cmd>Startify<CR>

nnoremap <leader>t <cmd>terminal<CR>

nnoremap <leader>u <cmd>UndotreeToggle<CR>

" }}}

" Plugins {{{

lua require('plugins')

let g:startify_custom_header = startify#pad(split(system('figlet -f slant Neovim'), '\n')[:-2])
let g:startify_files_number = 5
let g:startify_session_persistence = 1

let g:AutoPairsCenterLine = 0
let g:AutoPairsMultilineClose = 0

let g:Illuminate_delay = 200

let g:conflict_marker_begin = '^<<<<<<< .*$'
let g:conflict_marker_end = '^>>>>>>> .*$'

" }}}

" Neovide {{{

set guifont=Iosevka:h14
let g:neovide_cursor_animation_length = 0.02

" }}}
