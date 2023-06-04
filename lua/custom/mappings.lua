local M = {}

-- デフォルトのキーマップを無効にする
-- M.disabled = {
--   n = {
--       ["<leader>h"] = "",
--       ["<C-a>"] = ""
--   }
-- }

-- キーマップのカスタマイズ
M.abc = {
  n = {
    ["<C-n>"] = {"<cmd> Telescope <CR>", "Telescope"},
    ["<C-s>"] = {":Telescope Files <CR>", "Telescope Files"},
  },
  i = {
    ["jj"] = { "<ESC>", "escape insert mode" , opts = { nowait = true, noremap = true, silent = true }},
  }
}

M.creates = {
  n = {
    ["<leader>rcu"] = {
      function ()
        require('crates').upgrade_all_crates()
      end,
      "update crates"
    },
  },
}

return M
