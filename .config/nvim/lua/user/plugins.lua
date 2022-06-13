local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}

return require('packer').startup(function(use)
  -- My plugins here
  use 'wbthomason/packer.nvim' -- Have packer manage itself 
  use 'nvim-lua/popup.nvim'    -- An implementation of the Popup API from vim in Neovim 
  use 'nvim-lua/plenary.nvim'  -- Useful lua functions used ny lots of plugins 

  -- Colorschemes
  -- use 'lunarvim/colorschemes.nvim' -- If you want to check out some other themes from lunarvim
  use 'lunarvim/darkplus.nvim'

  -- cmp plugins
  use 'hrsh7th/nvim-cmp'              -- The completion plugin
  use 'hrsh7th/cmp-buffer'            -- Completions related to the buffer
  use 'hrsh7th/cmp-path'              -- Completions related to the path
  use 'hrsh7th/cmp-cmdline'           -- Completions related to the command line
  use 'saadparwaiz1/cmp_luasnip'      -- Snippet completions

  -- snippets
  use 'L3MON4D3/LuaSnip'              -- snippet engine (required for using snippets/cmp)
  use 'rafamadriz/friendly-snippets'

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
