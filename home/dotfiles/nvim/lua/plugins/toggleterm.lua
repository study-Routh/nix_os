return {
    "akinsho/toggleterm.nvim",

    version = "*",

    opts = {
        size = 15,

        open_mapping = [[<C-\>]],

        hide_numbers = true,

        direction = "horizontal",

        start_in_insert = true,

        insert_mappings = true,

        terminal_mappings = true,

        persist_size = true,

        persist_mode = true,

        close_on_exit = true,

        shell = vim.o.shell,

        shade_terminals = false,

        highlights = {
            Normal = {
                link = "Normal",
            },

            NormalFloat = {
                link = "NormalFloat",
            },

            FloatBorder = {
                link = "FloatBorder",
            },
        },
    },
}
