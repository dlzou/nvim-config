-- vim:foldmethod=marker

-- Bootstrapping Packer {{{

local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({
    'git',
    'clone',
    '--depth',
    '1',
    'https://github.com/wbthomason/packer.nvim',
    install_path,
  })
end

-- }}}

return require('packer').startup(function(use)
  -- Packer

  use 'wbthomason/packer.nvim'

  use 'lewis6991/impatient.nvim'


  -- Interface {{{

  use {
    'nvim-lualine/lualine.nvim',
    requires = 'kyazdani42/nvim-web-devicons',
    config = function()
      require('lualine').setup {
        options = {
          section_separators = '',
          component_separators = {left = '|', right = '|'},
          theme = require('lualine.themes.material'),
        },
        sections = {
          lualine_b = {'branch', 'diagnostics'},
          lualine_c = {
            {'filename', path = 1, shorting_target = 50}
          },
        },
      }
    end,
  }

  use 'mhinz/vim-startify'

  use {
    'lewis6991/gitsigns.nvim',
    requires = 'nvim-lua/plenary.nvim',
    config = function()
      require('gitsigns').setup {}
    end,
  }

  -- }}}

  -- Editor {{{

  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
    config = function()
      require('nvim-treesitter.configs').setup {
        highlight = {
          enable = true,
          additional_vim_regex_highlighting = false,
        },
        indent = {
          enable = true,
          disable = {
            "python",
            "go",
          }
        },
      }
    end,
  }
  
  use {
    'nvim-treesitter/playground',
    disable = true,
  }

  use { 
    'lukas-reineke/indent-blankline.nvim',
    config = function()
      require('indent_blankline').setup {
        show_current_context = true,
        buftype_exclude = {'terminal'},
        filetype_exclude = {'help', 'packer', 'startify'},
      }
    end,
  }

  use 'jiangmiao/auto-pairs'

  use 'tpope/vim-surround'

  use 'tpope/vim-commentary'

  use 'tpope/vim-sleuth'

  -- }}}

  -- Tools {{{

  use {
    'nvim-telescope/telescope-fzf-native.nvim',
    run = 'make',
  }

  use {
    'nvim-telescope/telescope.nvim',
    requires = 'nvim-lua/plenary.nvim',
    config = function()
      require('config.telescope')
    end,
  }

  use {
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons',
    config = function()
      require('nvim-tree').setup {
        disable_netrw = false,
      }
    end,
  }

  use 'mbbill/undotree'

  use 'tpope/vim-fugitive'

  use 'rhysd/conflict-marker.vim'

  use {
    'sindrets/diffview.nvim',
    requires = 'nvim-lua/plenary.nvim',
    config = function()
      require('diffview').setup {}
    end,
  }

  use {
    'neovim/nvim-lspconfig',
    config = function()
      require('config.lsp')
    end,
  }

  use 'hrsh7th/cmp-nvim-lsp'

  use 'L3MON4D3/LuaSnip'

  use 'saadparwaiz1/cmp_luasnip'

  use {
    'hrsh7th/nvim-cmp',
    config = function()
      require('config.cmp')
    end,
  }

  use 'ray-x/lsp_signature.nvim'

  use 'RRethy/vim-illuminate'

  use {
    'folke/trouble.nvim',
    requires = 'kyazdani42/nvim-web-devicons',
    config = function()
      require('trouble').setup {
        mode = 'document_diagnostics',
      }
    end,
  }
 
  -- }}}

  -- Languages {{{

  -- Python
  use "Vimjas/vim-python-pep8-indent"

  -- Go
  use {
    "ray-x/go.nvim",
    config = function()
      require('go').setup {}
    end,
  }

  -- }}}

end)
