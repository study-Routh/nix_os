return {
    "windwp/nvim-autopairs",

    event = "InsertEnter",

    opts = {
        check_ts = true,

        disable_filetype = {
            "TelescopePrompt",
            "oil",
        },

        map_cr = true,
        map_bs = true,
    },

    config = function(_, opts)
        require("nvim-autopairs").setup(opts)
    end,
}
