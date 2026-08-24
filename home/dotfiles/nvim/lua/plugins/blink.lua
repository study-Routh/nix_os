return {
    "saghen/blink.cmp",

    -- Stay on the latest stable v1 release.
    -- v2 is still under active development with breaking changes.
    version = "1.*",

    opts = {
        --------------------------------------------------
        -- Keymaps
        --------------------------------------------------

        keymap = {
            preset = "none",

            ["<C-Space>"] = {
                "show",
                "show_documentation",
                "hide_documentation",
            },

            ["<Tab>"] = {
                "select_and_accept",
                "fallback",
            },

            ["<S-Tab>"] = {
                "select_prev",
                "fallback",
            },

            ["<C-n>"] = {
                "select_next",
                "fallback",
            },

            ["<C-p>"] = {
                "select_prev",
                "fallback",
            },

            ["<CR>"] = {
                "accept",
                "fallback",
            },

            ["<C-e>"] = {
                "hide",
                "fallback",
            },
        },

        --------------------------------------------------
        -- Appearance
        --------------------------------------------------

        appearance = {
            nerd_font_variant = "mono",
        },

        --------------------------------------------------
        -- Completion
        --------------------------------------------------

        completion = {
            menu = {
                -- Keep completion intentional instead of having
                -- a popup appear on every keystroke.
                auto_show = false,

                border = "single",
                max_height = 12,
                scrollbar = false,

                draw = {
                    padding = 1,
                    gap = 1,

                    columns = {
                        { "kind_icon" },
                        { "label", "label_description", gap = 1 },
                    },
                },
            },

            documentation = {
                auto_show = false,
                treesitter_highlighting = true,

                window = {
                    border = "single",
                    scrollbar = false,
                },
            },

            list = {
                selection = {
                    preselect = true,
                    auto_insert = false,
                },
            },

            accept = {
                auto_brackets = {
                    enabled = true,
                },
            },

            ghost_text = {
                enabled = false,
            },
        },

        --------------------------------------------------
        -- Sources
        --------------------------------------------------

        sources = {
            default = {
                "lsp",
                "path",
                "snippets",
                "buffer",
            },
        },

        --------------------------------------------------
        -- Fuzzy Matching
        --------------------------------------------------

        fuzzy = {
            -- Keep binaries under Nix's control.
            -- Blink's Rust matcher normally downloads a binary itself.
            implementation = "lua",
        },

        --------------------------------------------------
        -- Signature Help
        --------------------------------------------------

        signature = {
            enabled = false,
        },
    },
}
