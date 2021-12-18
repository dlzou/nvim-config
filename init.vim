" vim:foldmethod=marker

" Plugins {{{

lua require('plugins')

let g:startify_custom_header = startify#pad(split(system('figlet -f slant Neovim'), '\n')[:-2])
let g:AutoPairsCenterLine = 0
let g:AutoPairsMultilineClose = 0
let g:Illuminate_delay = 500
let g:fzf_layout = {'down': '40%'}
let g:conflict_marker_begin = '^<<<<<<< .*$'
let g:conflict_marker_end = '^>>>>>>> .*$'

" }}}

" Key bindings {{{

nnoremap <expr> j (v:count == 0 ? 'gj' : 'j')
nnoremap <expr> k (v:count == 0 ? 'gk' : 'k')
nnoremap Y y$

xnoremap <C-c> "+y
inoremap <C-v> <C-r>+
cnoremap <C-v> <C-r>+
inoremap <C-d> <Del>

nnoremap <leader>c :Commands<CR>

nnoremap <leader>fb :Buffers<CR>
nnoremap <leader>ff :Files<CR>
nnoremap <leader>fg :Rg<CR>
nnoremap <leader>fk :b#<bar>bd#<CR>

nnoremap <leader>gv :Gvdiffsplit<Space>
nnoremap <leader>gdh :diffget //2<CR>
nnoremap <leader>gdl :diffget //3<CR>

nnoremap <leader>ld :TroubleToggle<Space>lsp_definitions<CR>
nnoremap <leader>ll :TroubleToggle<Space>lsp_document_diagnostics<CR>
nnoremap <leader>lr :TroubleToggle<Space>lsp_references<CR>

nnoremap <leader>n :noh<CR>
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

" }}}

" Neovide

set guifont=Iosevka:h14
let g:neovide_cursor_animation_length = 0.02

