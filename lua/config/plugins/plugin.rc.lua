-- local status, nvim_lsp = pcall(require, 'lspconfig')
-- if (not status) then return end
-- 
-- require("mason").setup({
--   ui = {
--       icons = {
--           package_installed = "✓",
--           package_pending = "➜",
--           package_uninstalled = "✗"
--       }
--   }
-- })
-- require("mason-lspconfig").setup()
-- 
-- local protocol = require('vim.lsp.protocol')
-- 
-- local on_attach = function(client, bufnr)
--   -- formatting
--   print("on attach")
--   if client.server_capabilities.documentFormattingProvider then
--     vim.api.nvim_command [[augroup Format]]
--     vim.api.nvim_command [[autocmd! * <buffer>]]
--     vim.api.nvim_command [[autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_seq_sync()]]
--     vim.api.nvim_command [[autogroup END]]
--   end
-- 
-- end
-- 
-- require("mason-lspconfig").setup_handlers {
-- --   function (server_name)
-- --     require("lspconfig")[server_name].setup {
-- --       on_attach = on_attach
-- --     }
-- --   end
-- 
--   -- nvim_lsp.pyright.setup {}
--   
--   nvim_lsp.tsserver.setup {
--     on_attach = on_attach,
--     filetypes = { "javascript", "javascriptreact", "javascript.jsx", "typescript", "typescriptreact", "typescript.tsx" },
--     cmd = { "typescript-language-server", "--stdio" },
--     init_options = { hostInfo = "neovim" },
--     -- root_dir = root_pattern("package.json", "tsconfig.json", "jsconfig.json", ".git"),
--   }
-- 
--   nvim_lsp.lua_ls.setup {
--     on_attach = on_attach,
--     cmd = { "lua-language-server" },
--     filetypes = { "lua" },
--     settings = {
--       Lua = {
--         telemetry = {
--           enable = false
--         },
--         diagnostics = {
--           -- Get the language server to recognize the 'vim' global
--           globals = { 'vim' },
--         },
-- 
--         workspace = {
--           -- Make the server aware of Neovim runtime files
--           library = { vim.env.VIMRUNTIME }
--           -- or pull in all of 'runtimepath'. NOTE: this is a lot slower
--           -- library = vim.api.nvim_get_runtime_file("", true)
--         },
--       }
--     }
--   }
-- }
-- 
