return {
    {
        "ryanmsnyder/toggleterm-manager.nvim",
        dependencies = {
            "akinsho/nvim-toggleterm.lua",
            "nvim-telescope/telescope.nvim",
            "nvim-lua/plenary.nvim", -- only needed because it's a dependency of telescope
        },
        config = true,
    }
}
