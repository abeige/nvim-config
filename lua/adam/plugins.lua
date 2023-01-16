local fn = vim.fn

-- automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
  print "Installing packer; close and reopen Neovim..."
  vim.cmd [[packadd packer.nvim]]
end

-- reload neovim when plugins.lua is saved
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- use a popup window
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}

-- install plugins here
return packer.startup(function(use)
  use "wbthomason/packer.nvim"  -- packer manages itself
  use "nvim-lua/popup.nvim"  -- popup API for neovim
  use "nvim-lua/plenary.nvim"  -- common lua functions

  use "ellisonleao/gruvbox.nvim"  -- gruvbox colors
  use "preservim/nerdtree"  -- better file explorer

  -- cmp plugins
  use "hrsh7th/nvim-cmp"  -- completion
  use "hrsh7th/cmp-buffer"  -- buffer completion
  use "hrsh7th/cmp-path"  -- path completion
  use "hrsh7th/cmp-cmdline"  -- cmdline completion
  use "saadparwaiz1/cmp_luasnip"  -- snippet completion

  -- snippets
  use "L3MON4D3/LuaSnip"  -- snippet engine
  use "rafamadriz/friendly-snippets"  -- snippets

  -- automatically set up your configuration
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
