--vim.keymap.bbb("n", "<leader>e", vim.cmd.Ex)

-- Move visual mode selected lines up/down using J/K
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("n", "J", "mzJ`z")

-- Half page jumps get centered
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

-- Move windows
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Go to left window", remap = true })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Go to lower window", remap = true })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Go to upper window", remap = true })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Go to right window", remap = true })

vim.keymap.set("n", "\\", ":split<CR>", { desc = "Open new split horizontally", silent = true })
vim.keymap.set("n", "|", ":vsplit<CR>", { desc = "Open new split vertically", silent = true })

vim.api.nvim_set_keymap('n', 'p', "p=`]", { noremap = true })

-- Better indenting in visual mode
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

-- Clear /search highlight
vim.api.nvim_set_keymap('n', '<Esc>', ':noh<CR>', { noremap = true, silent = true })

vim.keymap.set("n", "<leader><leader>", function ()
    require("telescope").extensions.smart_open.smart_open()
end, { noremap = true, silent = true })

-- Terminal window navigation key mappings
vim.api.nvim_set_keymap('t', '<C-n>', '<C-\\><C-n>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('t', '<C-h>', '<C-\\><C-N><C-w>h', {noremap = true})
vim.api.nvim_set_keymap('t', '<C-j>', '<C-\\><C-N><C-w>j', {noremap = true})
vim.api.nvim_set_keymap('t', '<C-k>', '<C-\\><C-N><C-w>k', {noremap = true})
vim.api.nvim_set_keymap('t', '<C-l>', '<C-\\><C-N><C-w>l', {noremap = true})

-- Copy to system clipboard
vim.api.nvim_set_keymap('v', '<leader>y', '"+y', {noremap = true})
vim.api.nvim_set_keymap('n', '<leader>p', '"+p', { noremap = true })

vim.api.nvim_set_keymap('n', 'L', '$', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'H', '^', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', ':', ';', { noremap = true })
vim.api.nvim_set_keymap('n', ';', ':', { noremap = true })
vim.api.nvim_set_keymap('x', ':', ';', { noremap = true })
vim.api.nvim_set_keymap('x', ';', ':', { noremap = true })

-- Use delete key to switch between last buffers quckly.
vim.keymap.set("n", "<BS>", ":b#<CR>", { silent=true })

vim.keymap.set("n", "_", ":vertical resize -5<CR>")
vim.keymap.set("n", "+", ":vertical resize +5<CR>")
--vim.keymap.set("n", "=", ":resize +5<CR>")
--vim.keymap.set("n", "-", ":resize -5<CR>")

-- Navigate buffers
vim.keymap.set("n", "<Right>", ":bnext<CR>", opts)
vim.keymap.set("n", "<Left>", ":bprevious<CR>", opts)

-- Close Buffers

