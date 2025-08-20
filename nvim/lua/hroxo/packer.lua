-- This file can be loaded by calling `lua require('plugins')` from your init.vim

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.8',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }
  use { "ellisonleao/gruvbox.nvim" }
  use ( "nvim-treesitter/nvim-treesitter", {run = ":TSUpdate"})
  use 'mbbill/undotree'
  use 'tpope/vim-fugitive'

   -- Gerir instalação de LSP servers
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'

  -- Configuração de LSP
  use 'neovim/nvim-lspconfig'

  -- Autocompletar
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'

  -- Snippets
  use 'L3MON4D3/LuaSnip'
  use 'saadparwaiz1/cmp_luasnip'

  use {
	  'nvim-lualine/lualine.nvim',
	  requires = { 'nvim-tree/nvim-web-devicons', opt = true },
	  config = function()
		  require('lualine').setup {
			  options = { theme = 'gruvbox_dark' }
		  }
	  end}

end)
