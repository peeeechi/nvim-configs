local plugins = {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "lua-language-server",
        "html-lsp",
        "prettier",
        "stylua",
        "rust-analyzer",
      },
    },
  },
  -- Lsp関連の設定をLoad
  {
    "neovim/nvim-lspconfig",
    config = function()
        require "plugins.configs.lspconfig"
        require "custom.configs.lspconfig"
    end,
  },
  {
    -- rust format
    -- https://github.com/rust-lang/rust.vim#formatting-with-rustfmt
    "rust-lang/rust.vim",
    ft = "rust",
    init = function ()
      -- let g:rustfmt_autosave = 1
      vim.g.rustfmt_autosave = 1
    end
  },
  {
    -- for cargo crates
    -- https://github.com/Saecki/crates.nvim
    "saecki/crates.nvim",
    dependencies = "hrsh7th/nvim-cmp",
    ft = {"rust", "toml"},
    config = function (_, opts)
      local crates = require('crates')
      crates.setup(opts)
      crates.show()
    end,
  },
  {
    -- nvim-cmp
    -- https://github.com/hrsh7th/nvim-cmp
    "hrsh7th/nvim-cmp",
    opts = function ()
      local M = require "plugins.configs.cmp"
      table.insert(M.sources, {name = "crates"})
      return M
    end
  },
  {
    -- syntax highlighting 関連
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        -- defaults 
        "vim",
        "lua",

        -- web dev 
        "html",
        "css",
        "javascript",
        "typescript",
        "tsx",
        "json",
        -- "vue", "svelte",

       -- low level
        "c",
        "zig"
      },
    },
  },

}

return plugins