lua require('plugins')

" Key bindings
nnoremap <expr> j (v:count == 0 ? 'gj' : 'j')
nnoremap <expr> k (v:count == 0 ? 'gk' : 'k')
nnoremap <leader>b :Buffers<CR>
nnoremap <leader>f :Files<CR>
nnoremap <leader>h :noh<CR>
nnoremap <leader>t :NvimTreeToggle<CR>
nnoremap <leader>u :UndotreeToggle<CR>

" Visual Elements 
set mouse=a
set number
set cursorline
set colorcolumn=101

if (has('termguicolors'))
  set termguicolors
endif
set t_Co=256
set background=dark
colorscheme palenight

hi ColorColumn ctermbg=237 guibg=237
autocmd ColorScheme * hi Keyword NONE
autocmd ColorScheme * hi Identifier NONE


" Indentation
set expandtab  " Use spaces insteads of tabs
set shiftwidth=2
set softtabstop=2
set autoindent  " Indent on new line
