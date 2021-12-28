local telescope = require('telescope')
local actions = require('telescope.actions')

telescope.setup {
  defaults = {
    mappings = {
      i = {
        ['<Esc>'] = actions.close,
      },
    },
    vimgrep_arguments = {
      "rg",
      "--color=never",
      "--no-heading",
      "--with-filename",
      "--line-number",
      "--column",
      "--smart-case",
      "--trim",
    },
  },
  pickers = {
    buffers = {
      theme = 'ivy',
      layout_config = {
        height = 20,
      },
      show_all_buffers = true,
      sort_lastused = true,
      mappings = {
        i = {
          ['<C-k>'] = 'delete_buffer',
        },
      },
    },
    find_files = {
      theme = 'ivy',
      layout_config = {
        height = 20,
      },
    },
    live_grep = {
      theme = 'ivy',
      layout_config = {
        height = 20,
      },
    },
    lsp_workspace_symbols = {
      theme = 'ivy',
      layout_config = {
        height = 20,
      },
    },
  },
  extensions = {
    fzf = {
      fuzzy = true,
      override_generic_sorter = true,
      override_file_sorter = true,
      case_mode = 'smart_case',
    },
  },
}

telescope.load_extension('fzf')
