vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

return {
    "nvim-tree/nvim-tree.lua",
    dependencies = { 'nvim-tree/nvim-web-devicons' },

    keys = {
        { "<leader>e", "<cmd>NvimTreeToggle<cr>", "Explorer" },
        { "<leader>z", "<cmd>NvimTreeFocus<cr>", "Focus" },
    }, 

    config = function()
        require("nvim-tree").setup ({
            trash = {
                cmd = "trash"
            },
            filters = {
                dotfiles = true,
            },
        })
    end,
}
