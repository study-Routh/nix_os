return {
    "stevearc/conform.nvim",

    config = function()
        local conform = require("conform")

        conform.setup({
            --------------------------------------------------
            -- Formatters
            --------------------------------------------------

            formatters_by_ft = {
                lua = {
                    "stylua",
                },

                python = {
                    "ruff_format",
                },

                rust = {
                    "rustfmt",
                },

                c = {
                    "clang_format",
                },

                cpp = {
                    "clang_format",
                },

                java = {
                    "google_java_format",
                },

                cmake = {
                    "cmake_format",
                },
            },

            --------------------------------------------------
            -- Format on save
            --------------------------------------------------

            format_on_save = {
                timeout_ms = 1000,
                lsp_format = "fallback",
            },
        })
    end,
}
