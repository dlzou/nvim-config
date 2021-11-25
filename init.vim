" Plugins
lua require('plugins')

let g:AutoPairsMultilineClose = 0
let g:Illuminate_delay = 1000


" Key bindings
nnoremap <expr> j (v:count == 0 ? 'gj' : 'j')
nnoremap <expr> k (v:count == 0 ? 'gk' : 'k')
nnoremap <leader>b :Buffers<CR>
nnoremap <leader>c :Commands<CR>
nnoremap <leader>f :Files<CR>
nnoremap <leader>h :noh<CR>
nnoremap <leader>t :NvimTreeToggle<CR>
nnoremap <leader>u :UndotreeToggle<CR>

inoremap <C-h> <Left>
inoremap <C-l> <Right>


" Visual Elements 
set mouse=a
set number
set cursorline
set colorcolumn=101

if (has('termguicolors'))
  set termguicolors
endif
colorscheme palenight


" Indentation
set expandtab  " Use spaces insteads of tabs
set shiftwidth=2
set softtabstop=2
set autoindent  " Indent on new line
