return {
    "lewis6991/gitsigns.nvim",

    config = function()
        require("gitsigns").setup({
            signs = {
                add          = { text = "│" },
                change       = { text = "│" },
                delete       = { text = "_" },
                topdelete    = { text = "‾" },
                changedelete = { text = "~" },
                untracked    = { text = "┆" },
            },

            signs_staged = {
                add          = { text = "│" },
                change       = { text = "│" },
                delete       = { text = "_" },
                topdelete    = { text = "‾" },
                changedelete = { text = "~" },
                untracked    = { text = "┆" },
            },

            signs_staged_enable = true,

            signcolumn = true,
            numhl = false,
            linehl = false,
            word_diff = false,

            attach_to_untracked = true,
            current_line_blame = false,

            watch_gitdir = {
                follow_files = true,
            },

            update_debounce = 100,
            max_file_length = 40000,

            on_attach = function(bufnr)
                local gs = require("gitsigns")

                local function map(mode, lhs, rhs, desc)
                    vim.keymap.set(mode, lhs, rhs, {
                        buffer = bufnr,
                        desc = desc,
                    })
                end

                map("n", "]h", function()
                    gs.nav_hunk("next")
                end, "Next Git hunk")

                map("n", "[h", function()
                    gs.nav_hunk("prev")
                end, "Previous Git hunk")

                map("n", "<leader>hp", gs.preview_hunk, "Preview Git hunk")
                map("n", "<leader>hs", gs.stage_hunk, "Stage Git hunk")
                map("n", "<leader>hr", gs.reset_hunk, "Reset Git hunk")
                map("n", "<leader>hu", gs.undo_stage_hunk, "Undo staged hunk")

                map("n", "<leader>hb", function()
                    gs.blame_line({
                        full = true,
                    })
                end, "Git blame line")

                map("n", "<leader>hd", gs.diffthis, "Git diff")
            end,
        })
    end,
}
