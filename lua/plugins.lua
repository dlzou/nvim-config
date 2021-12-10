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

return require('packer').startup(function(use)
  -- Packer

  use 'wbthomason/packer.nvim'

  use 'lewis6991/impatient.nvim'


  -- Interface

  use 'kyazdani42/nvim-web-devicons'

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


  -- Editor

  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
    config = function()
      require('nvim-treesitter.configs').setup {
        highlight = {
          enable = true,
          additional_vim_regex_highlighting = false,
        },
        indent = {enable = true},
      }
    end,
  }
  
  use {
    'nvim-treesitter/playground',
    disable = true,
  }
  
  use 'rhysd/conflict-marker.vim'

  use 'tpope/vim-fugitive'

  use 'lukas-reineke/indent-blankline.nvim'

  use 'jiangmiao/auto-pairs'

  use 'tpope/vim-surround'

  use 'tpope/vim-commentary'


  -- Tools

  use {
    'junegunn/fzf',
    run = ':call fzf#install()',
  }
  use 'junegunn/fzf.vim'
  
  use {
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons',
    config = function()
      require('nvim-tree').setup {}
    end,
  }

  use 'mbbill/undotree'

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

  use 'RRethy/vim-illuminate'

  use {
    'folke/trouble.nvim',
    requires = 'kyazdani42/nvim-web-devicons',
    config = function()
      require('trouble').setup {
        mode = 'lsp_document_diagnostics',
      }
    end,
  }

end)
