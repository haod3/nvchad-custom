local M = {}

M.general = {
  n = {
	["<F2>"] = { "<cmd> SymbolsOutline <CR>", "show outline" },
	["<C-S-u>"] = { "<cmd> windo lcl|ccl <CR>", "close location/quickfix"},
	["[t"] = {
	  function()
		require("todo-comments").jump_prev()
	  end,
	  "previous todo comment"
	},
	["t]"] = {
	  function()
		require("todo-comments").jump_next()
	  end,
	  "next todo comment"
	}
  },
  v = {
	["<C-c>"] = { '"+y', "copy v line" },
	["J"] = { ":move '>+1<CR>gv-gv", "move selected v line down" },
	["K"] = { ":move '<-2<CR>gv-gv", "move selected v line up" },
  }
}

M.nvimtree = {
  n = {
	["<F3>"] = { "<cmd> NvimTreeToggle <CR>", "toggle nvimtree" },
  }
}

M.telescope = {
  n = {
	["<C-p>"] = { "<cmd> Telescope find_files <CR>", "find files" },
	["<C-f>"] = { "<cmd> Telescope live_grep <CR>", "live grep" },
	["<C-S-p>"] = { "<cmd> Telescope project <CR>", "find projects" },
  }
}

M.nvterm = {
  n = {
	["<C-`>"] = {
	  function()
	    require("nvterm.terminal").toggle "horizontal"
	  end,
	  "toggle horizontal term",
	},
  },

  t = {
	["<C-`>"] = {
	  function()
	    require("nvterm.terminal").toggle "horizontal"
	  end,
	  "toggle horizontal term",
	},
  }
}

M.hop = {
  n = {
	["ww"] = { "<cmd> HopWord <CR>", "motion" }
  }
}

M.tabufline = {
  n = {
	["<leader>X"] = {
	  function()
	    require("nvchad_ui.tabufline").closeAllBufs()
	  end,
	  "close all buffer",
	},
  }
}

return M