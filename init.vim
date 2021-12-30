" vim:foldmethod=marker

" Plugins {{{

lua require('plugins')

let g:startify_custom_header = startify#pad(split(system('figlet -f slant Neovim'), '\n')[:-2])
let g:startify_files_number = 5
let g:startify_session_persistence = 1

let g:AutoPairsCenterLine = 0
let g:AutoPairsMultilineClose = 0

let g:Illuminate_delay = 500

let g:conflict_marker_begin = '^<<<<<<< .*$'
let g:conflict_marker_end = '^>>>>>>> .*$'

" }}}

" Key bindings {{{

nnoremap <expr> j (v:count == 0 ? 'gj' : 'j')
xnoremap <expr> j (v:count == 0 ? 'gj' : 'j')
nnoremap <expr> k (v:count == 0 ? 'gk' : 'k')
xnoremap <expr> k (v:count == 0 ? 'gk' : 'k')

nnoremap p ]p
xnoremap <C-c> "+y
inoremap <C-v> <C-r>+
cnoremap <C-v> <C-r>+

inoremap <C-d> <Del>
inoremap <C-f> <Right>
inoremap <C-b> <Left>
inoremap <C-p> <Up>
inoremap <C-n> <Down>
inoremap <C-a> <C-o>^
inoremap <C-e> <C-o>$

nnoremap <leader>c :Telescope commands<CR>

nnoremap <leader>fb :Telescope buffers<CR>
nnoremap <leader>ff :Telescope find_files<CR>
nnoremap <leader>fg :Telescope live_grep<CR>

nnoremap <leader>gdh :diffget //2<CR>
nnoremap <leader>gdl :diffget //3<CR>
nnoremap <leader>gv :Gvdiffsplit<Space>

nnoremap <leader>ld :TroubleToggle<Space>lsp_definitions<CR>
nnoremap <leader>ll :TroubleToggle<Space>document_diagnostics<CR>
nnoremap <leader>lr :TroubleToggle<Space>lsp_references<CR>
nnoremap <leader>ls :Telescope<Space>lsp_workspace_symbols<Space>query=

nnoremap <leader>n :noh<CR>

nnoremap <leader>sc :SClose<CR>
nnoremap <leader>sd :SDelete<CR>
nnoremap <leader>sl :SLoad<CR>
nnoremap <leader>ss :SSave<CR>
nnoremap <leader>st :Startify<CR>

nnoremap <leader>t :NvimTreeToggle<CR>

nnoremap <leader>u :UndotreeToggle<CR>

" }}}

" Settings {{{

set mouse=a
set updatetime=500
set notimeout

set number
set cursorline
set colorcolumn=101

if (has('termguicolors'))
  set termguicolors
endif
colorscheme palenight

set expandtab  " Use spaces insteads of tabs
set shiftwidth=2
set softtabstop=2
set autoindent  " Indent on new line

set hidden

autocmd TermOpen * setlocal nonumber

" }}}

" Neovide {{{

set guifont=Iosevka:h14
let g:neovide_cursor_animation_length = 0.02

" }}}
