local M = {}

M.plugins = "custom.plugins"
M.mappings = require "custom.mappings"

-- seem not work
M.ui = {
    hl_override = {
        CursorLine = { bg = "one_bg" }
    }
}

return M
