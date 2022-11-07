return {
  ["nvim-telescope/telescope.nvim"] = {
	override_options = {
	  defaults = {
		prompt_prefix = "  "
	  },
	  extensions_list = { "project" }
	}
  },
  ["neovim/nvim-lspconfig"] = {
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.plugins.lspconfig"
    end,
  },
  ["phaazon/hop.nvim"] = {
	branch = 'v2', -- optional but strongly recommended
    config = function()
      -- you can configure Hop the way you like here; see :h hop-config
      require'hop'.setup { keys = 'etovxqpdygfblzhckisuran' }
    end
  },
  ["lukas-reineke/virt-column.nvim"] = {
	after = "base46",
	opt = true,
	setup = function()
	  require("core.lazy_load").on_file_open "virt-column.nvim"
	end,
	config = function()
	  require("virt-column").setup { char = '│' }
	end
  },
  ["folke/which-key.nvim"] = {
	disable = false,
  },
  ["simrat39/symbols-outline.nvim"] = {
	opt = true,
	setup = function()
	  require("core.lazy_load").on_file_open "symbols-outline.nvim"
	end,
	config = function()
	  require "symbols-outline".setup()
	end,
  },
  ["jose-elias-alvarez/null-ls.nvim"] = {
	after = "nvim-lspconfig",
	config = function()
	   require "custom.plugins.null-ls"
	end,
  },
  ["ray-x/go.nvim"] = {
	opt = true,
	setup = function()
	  require("core.lazy_load").on_file_open "go.nvim"
	end,
	config = function()
	  require "go".setup()
	end,
  },
  ["ray-x/guihua.lua"] = { opt = true },
  ["nvim-telescope/telescope-project.nvim"] = {},
  ["folke/todo-comments.nvim"] = {
	branch = 'neovim-pre-0.8.0',
	config = function()
	  require("todo-comments").setup{}
	end
  },
}
