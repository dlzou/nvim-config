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
    vim.cmd [[autocmd CursorHold * lua vim.lsp.diagnostic.show_line_diagnostics({show_header=false,focusable=false,close_events={'CursorMoved','InsertEnter','WinScrolled'}})]]
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
