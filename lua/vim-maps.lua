vim.keymap.set("n", "<leader>e", vim.cmd.Ex)


-- Move visual mode selected lines up/down using J/K
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("n", "J", "mzJ`z")


vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")


-- Leader + p to paste copied word over another word
vim.keymap.set("x", "<leader>p", [["_dP]])

-- foo
-- bar
-- copy foo, highlight bar, leader + p, won't lose foo.

vim.keymap.set("n", "Q", "<nop>")
vim.opt.fillchars = { eob = ' ' }


-- Redo Map
vim.keymap.set("n", "U", "<C-R>", { desc = "Redo last change" })
vim.keymap.set("i", "<C-BS>", "<Esc>cvb", { })

-- UndoTree
vim.keymap.set('n', '<leader>t', vim.cmd.UndotreeToggle)

-- Fast saving and quit
vim.keymap.set("n", "<Leader>w", ":write!<CR>", opts)

-- Use control + left/right arrow to moce in insert mode.
vim.keymap.set("i", "<C-BS>", "<Esc>cvb", { })

-- Copy all
vim.keymap.set('n', '<C-a>', 'ggVG', opts);

--vim.keymap.set("n", ":", "<cmd>Telescope resume<cr>", opts)

vim.keymap.set("n", "[c", function()
  require("treesitter-context").go_to_context(vim.v.count1)
end, { silent = true })


vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Go to left window", remap = true })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Go to lower window", remap = true })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Go to upper window", remap = true })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Go to right window", remap = true })


vim.keymap.set("n", "\\", ":split<CR>", { desc = "Open new split horizontally", silent = true })
vim.keymap.set("n", "|", ":vsplit<CR>", { desc = "Open new split vertically", silent = true })

vim.api.nvim_set_keymap('n', ';', ':', { noremap = true })

vim.api.nvim_set_keymap('n', 'p', "p=`]", { noremap = true })

vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

vim.keymap.set({ "i", "n" }, "<esc>", "<cmd>noh<cr><esc>", { desc = "Escape and clear hlsearch" })


vim.keymap.set("n", "<leader><leader>", function ()
  require("telescope").extensions.smart_open.smart_open()
end, { noremap = true, silent = true })
