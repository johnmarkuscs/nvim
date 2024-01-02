return {
    {
        'nvim-telescope/telescope.nvim',
        dependencies = {
            'nvim-lua/plenary.nvim',
            'nvim-tree/nvim-web-devicons',
        },
        config = function()
            local builtin = require('telescope.builtin')
            vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
            vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
            vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
            vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
            vim.keymap.set('n', '<leader>gt', builtin.git_status, {})
            vim.keymap.set('n', '<leader>fa', builtin.current_buffer_fuzzy_find	, {})

            local telescope = require('telescope')

            telescope.setup {
                file_ignore_patterns = { "%.git/." },
                defaults = {
                    previewer = false,
                    -- hidden = true,
                    prompt_prefix = "   ",
                    file_ignore_patterns = { "node_modules", "package-lock.json" },
                    initial_mode = "insert",
                    sorting_strategy = "ascending",
                    layout_strategy = "horizontal",

                    layout_config = {
                        horizontal = {
                            prompt_position = "top",
                            preview_width = 0.65,
                            results_width = 0.90,
                        },
                        vertical = {
                            mirror = false,
                        },
                        width = 0.9,
                        height = 0.85,
                        prompt_position = "top",
                        preview_cutoff = 120,
                    },
                },
                extensions = {
                    smart_open = {
                        show_scores = false,
                        ignore_patterns = {"*.git/*", "*/tmp/*"},
                        match_algorithm = "fzy",
                        disable_devicons = false,
                        open_buffer_indicators = {previous = "👀", others = "🙈"},
                    }
                },
                pickers = {
                    find_files = {
                        -- theme = "dropdown",
                        previewer = true,
                        layout_config = {
                            horizontal = {
                                prompt_position = "top",
                                preview_width = 0.65    ,
                                results_width = 0.8,
                            },
                            vertical = {
                                mirror = false,
                            },
                            width = 0.9,
                            height = 0.95,
                            prompt_position = "top",
                            preview_cutoff = 120,
                        },
                    },
                    git_files = {
                        previewer = true,
                        layout_config = {
                            height = 0.8,
                            prompt_position = "top",
                            preview_cutoff = 120,
                        },
                    },
                    buffers = {
                        previewer = false,
                        initial_mode = "insert",
                        theme = "dropdown",
                        layout_config = {
                            width = 0.5,
                            height = 0.4,
                            prompt_position = "top",
                            preview_cutoff = 120,
                        },
                        mappings = {
                            n = {
                                ['<c-d>'] = require('telescope.actions').delete_buffer
                            }, -- n
                            i = {
                                ['<c-d>'] = require('telescope.actions').delete_buffer
                            } -- i
                        }, -- mappings
                    },
                    current_buffer_fuzzy_find = {
                        previewer = true,
                        -- theme = "dropdown",
                        layout_config = {
                            width = 0.9,
                            height = 0.75,
                            prompt_position = "top",
                            preview_cutoff = 120,
                            preview_width = 0.6
                        },
                    },
                    live_grep = {
                        only_sort_text = true,
                        previewer = true,
                        layout_config = {
                            horizontal = {
                                width = 0.9,
                                height = 0.75,
                                preview_width = 0.6,
                            },
                        },
                    },
                    grep_string = {
                        only_sort_text = true,
                        previewer = true,
                        layout_config = {
                            horizontal = {
                                width = 0.9,
                                height = 0.75,
                                preview_width = 0.6,
                            },
                        },
                    },
                    lsp_references = {
                        show_line = false,
                        previewer = true,
                        layout_config = {
                            horizontal = {
                                width = 0.9,
                                height = 0.75,
                                preview_width = 0.6,
                            },
                        },
                    },
                    treesitter = {
                        show_line = false,
                        previewer = true,
                        layout_config = {
                            horizontal = {
                                width = 0.9,
                                height = 0.75,
                                preview_width = 0.6,
                            },
                        },
                    },
                },
            }
        end
    },
}
