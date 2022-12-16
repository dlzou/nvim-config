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


  -- Editor {{{

  use 'jiangmiao/auto-pairs'

  use 'tpope/vim-surround'

  use 'tpope/vim-commentary'

  use 'tpope/vim-sleuth'

  -- }}}

end)
