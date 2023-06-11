---@type ChadrcConfig 
 local M = {}
 M.ui = {
    theme = 'catppuccin',
    statusline = {
      theme = "vscode_colored",
    },
 }
 M.mappings = require "custom.mappings"
 M.plugins = "custom.plugins"
 return M
