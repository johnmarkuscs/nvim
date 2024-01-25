return {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
        local harpoon = require("harpoon")

        harpoon:setup({
            settings = {
                sync_on_save = true,
                save_on_toggle = true,
            },
        })
    end,
    keys = {
        { "<leader>a", function() require("harpoon"):list():append() end, desc = "harpoon file", },
        { "<C-e>", function() local harpoon = require("harpoon") harpoon.ui:toggle_quick_menu(harpoon:list()) end, desc = "harpoon quick menu", },
        { "<leader>j", function() require("harpoon"):list():select(1) end, desc = "harpoon to file 1", },
        { "<leader>k", function() require("harpoon"):list():select(2) end, desc = "harpoon to file 2", },
        { "<leader>l", function() require("harpoon"):list():select(3) end, desc = "harpoon to file 3", },
        { "<leader>;", function() require("harpoon"):list():select(4) end, desc = "harpoon to file 4", },
    },
}
