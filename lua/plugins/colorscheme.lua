return {
    {
        "sainnhe/gruvbox-material",
        priority = 1000,
        config = function()
            vim.o.background = "dark"
            vim.g.gruvbox_material_background = "dark";
            -- transparent background
            --vim.g.gruvbox_material_transparent_background = 1
            vim.cmd.colorscheme("gruvbox-material")
            --vim.g.gruvbox_material_ui_contrast = "high" -- The contrast of line numbers, indent lines, etc.
        end,
    }
}
