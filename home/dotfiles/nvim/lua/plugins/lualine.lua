local theme = require("desktop_theme")
local c = theme.colors

local graphite = {
    normal = {
        a = { fg = c.background, bg = c.accent, gui = "bold" },
        b = { fg = c.foreground, bg = c.surfaceAlt },
        c = { fg = c.foreground, bg = c.background },
    },

    insert = {
        a = { fg = c.background, bg = c.success, gui = "bold" },
    },

    visual = {
        a = { fg = c.background, bg = c.warning, gui = "bold" },
    },

    replace = {
        a = { fg = c.background, bg = c.error, gui = "bold" },
    },

    command = {
        a = { fg = c.background, bg = c.accent, gui = "bold" },
    },

    inactive = {
        a = { fg = c.muted, bg = c.background },
        b = { fg = c.muted, bg = c.background },
        c = { fg = c.muted, bg = c.background },
    },
}

return {
    "nvim-lualine/lualine.nvim",

    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },

    config = function()
        require("lualine").setup({
            options = {
                theme = graphite,
                icons_enabled = true,
                globalstatus = true,

                component_separators = "",
                section_separators = "",

                disabled_filetypes = {
                    statusline = {
                        "dashboard",
                    },
                },
            },

            sections = {
                lualine_a = {
                    {
                        function()
                            return ""
                        end,
                        padding = {
                            left = 1,
                            right = 1,
                        },
                    },

                    {
                        "mode",
                    },
                },

                lualine_b = {
                    "branch",

                    {
                        "diff",
                        symbols = {
                            added = "+",
                            modified = "~",
                            removed = "-",
                        },
                    },

                    "diagnostics",
                },

                lualine_c = {
                    {
                        "filename",
                        path = 1,

                        symbols = {
                            modified = " ●",
                            readonly = " ",
                            unnamed = "[No Name]",
                            newfile = " [New]",
                        },
                    },
                },

                lualine_x = {
                    {
                        "filetype",
                        colored = false,
                    },
                },

                lualine_y = {
                    "progress",
                },

                lualine_z = {
                    "location",
                },
            },

            inactive_sections = {
                lualine_a = {},
                lualine_b = {},

                lualine_c = {
                    {
                        "filename",
                        path = 1,
                    },
                },

                lualine_x = {},
                lualine_y = {},
                lualine_z = {},
            },
        })
    end,
}
