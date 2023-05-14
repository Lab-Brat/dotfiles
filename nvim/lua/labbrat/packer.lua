-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Telescope for finding stuff and navigating
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.1',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- Colorscheme
  use({
	  'rose-pine/neovim',
	  as = 'rose-pine',
	  config = function()
		  vim.cmd('colorscheme rose-pine')
	  end
  })

  -- Treesitter
  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

  -- LSP
  use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v2.x',
	  requires = {
		  {'neovim/nvim-lspconfig'},
		  {
			  'williamboman/mason.nvim',
			  run = ":MasonUpdate"
		  },
		  {'williamboman/mason-lspconfig.nvim'},

		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  {'L3MON4D3/LuaSnip'},
	  }
  }

  -- File Tree
  use {
	  'nvim-tree/nvim-tree.lua',
	  requires = {
		  'nvim-tree/nvim-web-devicons',
	  },
	  config = function()
		  require("nvim-tree").setup {}
	  end
}

  -- Toggleterm
  use {
	  "akinsho/toggleterm.nvim",
	  tag = '*',
	  config = function()
	  	require("toggleterm").setup()
	  end
  }

  -- Copilot
  use {
	  "zbirenbaum/copilot.lua",
-- 	  cmd = "Copilot",
--        event = "InsertEnter",
	  config = function()
		  require("copilot").setup({})
	  end,
  }

  -- Copilot CMP
  use {
	  "zbirenbaum/copilot-cmp",
	  after = { "copilot.lua" },
	  config = function ()
		  require("copilot_cmp").setup()
	  end
  }
end)
