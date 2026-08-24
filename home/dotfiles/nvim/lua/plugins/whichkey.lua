return {
    "folke/which-key.nvim",

    event = "VeryLazy",

    opts = {
        preset = "modern",

        delay = 300,

        win = {
            border = "single",
            no_overlap = true,
            padding = { 1, 2 },
            title = false,
        },

        layout = {
            width = {
                min = 20,
                max = 50,
            },

            spacing = 3,
        },

        icons = {
            breadcrumb = "»",
            separator = "→",
            group = "+",
        },
    },

    keys = {
        {
            "<leader>?",
            function()
                require("which-key").show({
                    global = false,
                })
            end,
            desc = "Buffer local keymaps",
        },
    },
}
