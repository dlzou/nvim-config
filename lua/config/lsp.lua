local lspconfig = require('lspconfig')

vim.diagnostic.config({
  virtual_text = false,
  signs = false,
  severity_sort = true,
  float = {
    header = '',
  },
})

local handlers = {}

local on_attach = function(client, bufnr)
  local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
  local opts = {
    noremap = true,
    silent = true,
  }
  buf_set_keymap('n', '<leader>ld', '<cmd>Telescope<Space>lsp_definitions<CR>', opts)
  buf_set_keymap('n', '<leader>ll', '<cmd>TroubleToggle<Space>document_diagnostics<CR>', opts)
  buf_set_keymap('n', '<leader>ln', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
  buf_set_keymap('n', '<leader>lr', '<cmd>TroubleToggle<Space>lsp_references<CR>', opts)
  buf_set_keymap('n', '<leader>ls', '<cmd>Telescope<Space>lsp_workspace_symbols<Space>query=', opts)

  require('lsp_signature').on_attach({
    bind = true,
    hint_enable = false,
    max_height = 8,
    max_width = 100,
    handler_opts = {
      border = 'none',
    },
    toggle_key = '<C-z>',
  })
  require('illuminate').on_attach(client)
  vim.cmd [[autocmd CursorHold * lua vim.diagnostic.open_float(nil, {focusable=false, scope='cursor', close_events={'CursorMoved', 'InsertEnter', 'BufLeave', 'WinLeave', 'WinScrolled'}})]]
end

local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

-- Pyright
lspconfig.pyright.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}

-- ccls
lspconfig.ccls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}

-- gopls
lspconfig.gopls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}
vim.api.nvim_exec([[ autocmd BufWritePre *.go :silent! lua require('go.format').gofmt() ]], false)
