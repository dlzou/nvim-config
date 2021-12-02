local M = {}

function M.config()
  local lspconfig = require('lspconfig')

  local handlers = {
    ['textDocument/publishDiagnostics'] = vim.lsp.with(
      vim.lsp.diagnostic.on_publish_diagnostics,
      {severity_sort = true, virtual_text = false}
    ),
  }

  local on_attach = function(client)
    require('illuminate').on_attach(client)
    vim.cmd [[autocmd CursorHold * lua vim.lsp.diagnostic.show_line_diagnostics({show_header=false, focusable=false, close_events={'CursorMoved', 'InsertEnter', 'WinLeave', 'WinScrolled'}})]]
  end

  local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

  -- Pyright
  lspconfig.pyright.setup {
    handlers = handlers,
    on_attach = on_attach,
    capabilities = capabilities,
  }

  -- ccls
  lspconfig.ccls.setup {
    handlers = handlers,
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

return M
