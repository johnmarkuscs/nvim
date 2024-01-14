-- Lazy
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
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

require("vim-options")
require("vim-maps")
require("lazy").setup("plugins")

-- Move these
vim.api.nvim_exec([[
    hi TreesitterContext guibg=none
    hi TreesitterContextLineNumber guibg=none
    hi TreesitterContextSeparator guibg=none
    hi TreesitterContextBottom gui=none guisp=Grey
]], false)

