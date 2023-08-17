local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
-- lazy.nvim がダウンロードされていない場合はDownload
if not vim.loop.fs_stat(lazypath) then
  print('lazy.nvim loading ...')
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require('lazy').setup({
  'tpope/vim-commentary',
  -- 'hoob3rt/lualine.nvim',
  {
    'nvim-lualine/lualine.nvim',
    dependencies = {
      'nvim-tree/nvim-web-devicons',
      opt = true,
    },
    event = 'VeryLazy',
  },
}, {})
