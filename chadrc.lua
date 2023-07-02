local M = {}

M.plugins = "custom.plugins"
M.mappings = require "custom.mappings"

M.ui = {
  theme = "ashes",
  lsp = {
    signature = {
      disabled = true,
    },
  },
}

return M
