-- chadrc
local M = {}

M.mappings = require "custom.mappings"
M.plugins = require "custom.plugins"
M.ui = {
  hl_override = require "custom.highlights",
  theme = "aquarium"
}

return M