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
  -- plugin = true,
  n = {
    ["<C-n>"] = {"<cmd> Telescope <CR>", "Telescope"},
    ["<C-s>"] = {":Telescope Files <CR>", "Telescope Files"},
    -- ["<leader>db"] = { "<cmd> DapToggleBreakpoint <CR>" },
    -- ["<leader>dus"] = {
    --   function ()
    --     local widgets = require('dap.ui.widgets');
    --     local sidebar = widgets.sidebar(widgets.scopes);
    --     sidebar.open();
    --   end,
    --   "Open debugging sidebar"
    -- },
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
