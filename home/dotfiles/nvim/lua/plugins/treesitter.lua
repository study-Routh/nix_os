local parsers = {
    -- Neovim / config
    "lua",
    "vim",
    "vimdoc",
    "query",
    "nix",

    -- Programming
    "c",
    "cpp",
    "python",
    "rust",
    "java",

    -- Shell / data / docs
    "bash",
    "json",
    "yaml",
    "toml",
    "markdown",
    "markdown_inline",
}

return {
    "nvim-treesitter/nvim-treesitter",

    -- Current nvim-treesitter explicitly does not support lazy-loading.
    lazy = false,

    -- Keep installed parsers compatible whenever the plugin updates.
    build = ":TSUpdate",

    config = function()
        local treesitter = require("nvim-treesitter")

        -- Install anything from our parser list that is missing.
        treesitter.install(parsers)

        -- Highlighting is handled by Neovim itself in the new Treesitter API.
        vim.api.nvim_create_autocmd("FileType", {
            pattern = parsers,

            callback = function()
                pcall(vim.treesitter.start)
            end,
        })
    end,
}
