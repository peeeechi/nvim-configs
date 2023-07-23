---@type ChadrcConfig 
 local M = {}
 M.ui = {
    theme = 'ayu_dark',
    statusline = {
      theme = "vscode_colored",
    },
  hl_override = {
    Comment = {
      fg = "#008800",
    },
  },
 }
 M.mappings = require "custom.mappings"
 M.plugins = "custom.plugins"
 return M
