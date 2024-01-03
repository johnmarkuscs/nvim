return {
    {
        "NvChad/nvterm",
        config = function ()
            require("nvterm").setup({
                terminals = {
                    type_opts = {
                        float = {
                            relative = 'editor',
                            row = 0.3,
                            col = 0.25,
                            width = 0.50,
                            height = 0.4,
                            border = "single",
                        },
                    },
                }})

            local terminal = require("nvterm.terminal")

            local toggle_modes = {'n', 't'}
            local mappings = {
                {
                    -- Key mappings in terminal mode
                    ["<A-i>"] = function()
                        terminal.toggle "float"
                    end,
                    ["<A-h>"] = function()
                        terminal.toggle "horizontal"
                    end,
                    ["<A-v>"] = function()
                        terminal.toggle "vertical"
                    end,
                },
                {
                    -- Key mappings in normal mode
                    ["<A-i>"] = function()
                        terminal.toggle "float"
                    end,
                    ["<A-h>"] = function()
                        terminal.toggle "horizontal"
                    end,
                    ["<A-v>"] = function()
                        terminal.toggle "vertical"
                    end,
                    ["<leader>h"] = function()
                        terminal.new "horizontal"
                    end,
                    ["<leader>v"] = function()
                        terminal.new "vertical"
                    end,
                },
            }

            local opts = { noremap = true, silent = true }

            for _, mode in ipairs(toggle_modes) do
                for mapping, action in pairs(mappings[_]) do
                    vim.keymap.set(mode, mapping, action, opts)
                end
            end
        end,
    }

}
