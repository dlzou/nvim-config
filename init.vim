" Plugins
lua require('plugins')

let g:AutoPairsCenterLine = 0
let g:AutoPairsMultilineClose = 0
let g:Illuminate_delay = 500


" Key bindings
nnoremap <expr> j (v:count == 0 ? 'gj' : 'j')
nnoremap <expr> k (v:count == 0 ? 'gk' : 'k')
nnoremap <leader>c :Commands<CR>
nnoremap <leader>fb :Buffers<CR>
nnoremap <leader>ff :Files<CR>
nnoremap <leader>fk :b#<bar>bd#<CR>
nnoremap <leader>fg :Rg<CR>
nnoremap <leader>h :noh<CR>
nnoremap <leader>ll :TroubleToggle<Space>lsp_document_diagnostics<CR>
nnoremap <leader>ld :TroubleToggle<Space>lsp_definitions<CR>
nnoremap <leader>lr :TroubleToggle<Space>lsp_references<CR>
nnoremap <leader>t :NvimTreeToggle<CR>
nnoremap <leader>u :UndotreeToggle<CR>


" Settings
set mouse=a
set updatetime=500

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
