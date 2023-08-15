require("base")
require("maps")
require("highlights")

local has = function(x)
  return vim.fn.has(x) == 1
end

local is_mac = has "macuix"
local is_win = has "win32"

if is_mac then
  require('macos')
elseif is_win then
  require('windows')
else
  print('linux')
  vim.opt.clipboard = "unnamedplus"
end

