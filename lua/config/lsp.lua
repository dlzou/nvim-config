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

local on_attach = function(client)
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
