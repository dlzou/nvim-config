local M = {}

function M.config()
  local lspconfig = require('lspconfig')
  local handlers = {
    ['textDocument/publishDiagnostics'] = vim.lsp.with(
      vim.lsp.diagnostic.on_publish_diagnostics, {virtual_text = false}
    ),
  }

  local on_attach = function(client)
    require('illuminate').on_attach(client)
    vim.cmd [[autocmd CursorHold * lua vim.lsp.diagnostic.show_line_diagnostics({show_header=false,focusable=false,close_events={'CursorMoved','InsertEnter'}})]]
  end

  -- Pyright
  lspconfig.pyright.setup {
    handlers = handlers,
    on_attach = on_attach,
  }

  -- ccls
  lspconfig.ccls.setup {
    handlers = handlers,
    on_attach = on_attach,
  }
end

return M
