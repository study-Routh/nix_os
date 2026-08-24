--------------------------------------------------
-- Telescope
--------------------------------------------------

local builtin = require("telescope.builtin")

vim.keymap.set("n", "<leader>ff", builtin.find_files, {
    desc = "Find Files",
})

vim.keymap.set("n", "<leader>fg", builtin.live_grep, {
    desc = "Live Grep",
})

vim.keymap.set("n", "<leader>fb", builtin.buffers, {
    desc = "Buffers",
})

vim.keymap.set("n", "<leader>fh", builtin.help_tags, {
    desc = "Help Tags",
})

vim.keymap.set("n", "<leader>fr", builtin.oldfiles, {
    desc = "Recent Files",
})

--------------------------------------------------
-- LSP
--------------------------------------------------

vim.api.nvim_create_autocmd("LspAttach", {
    callback = function(event)
        vim.keymap.set("n", "gd", vim.lsp.buf.definition, {
            buffer = event.buf,
            desc = "Go to Definition",
        })

        vim.keymap.set("n", "gD", vim.lsp.buf.declaration, {
            buffer = event.buf,
            desc = "Go to Declaration",
        })
    end,
})

--------------------------------------------------
-- Oil
--------------------------------------------------

vim.keymap.set("n", "-", "<CMD>Oil<CR>", {
    desc = "Open parent directory",
})

--------------------------------------------------
-- ToggleTerm
--------------------------------------------------

local Terminal = require("toggleterm.terminal").Terminal

vim.keymap.set("n", "<leader>tt", "<CMD>ToggleTerm<CR>", {
    desc = "Toggle Terminal",
})

--------------------------------------------------
-- LazyGit
--------------------------------------------------

local lazygit = Terminal:new({
    cmd = "lazygit",
    hidden = true,
    direction = "horizontal",
})

vim.keymap.set("n", "<leader>tg", function()
    lazygit:toggle()
end, {
    desc = "LazyGit",
})

--------------------------------------------------
-- Run Current File
--------------------------------------------------

local function run_in_terminal(cmd, dir)
    local terminal = Terminal:new({
        cmd = cmd,
        dir = dir,
        direction = "horizontal",
        close_on_exit = false,
        auto_scroll = true,
    })

    terminal:toggle()
end

vim.keymap.set("n", "<F5>", function()
    --------------------------------------------------
    -- Save before running
    --------------------------------------------------

    vim.cmd("write")

    local ft = vim.bo.filetype

    local file = vim.fn.expand("%:p")
    local dir = vim.fn.expand("%:p:h")
    local name = vim.fn.expand("%:t:r")

    --------------------------------------------------
    -- Python
    --------------------------------------------------

    if ft == "python" then
        run_in_terminal(
            "python3 " .. vim.fn.shellescape(file),
            dir
        )

    --------------------------------------------------
    -- C
    --------------------------------------------------

    elseif ft == "c" then
        local exe = "/tmp/nvim-" .. name

        run_in_terminal(
            "gcc "
                .. vim.fn.shellescape(file)
                .. " -o "
                .. vim.fn.shellescape(exe)
                .. " && "
                .. vim.fn.shellescape(exe),
            dir
        )

    --------------------------------------------------
    -- C++
    --------------------------------------------------

    elseif ft == "cpp" then
        local exe = "/tmp/nvim-" .. name

        run_in_terminal(
            "g++ "
                .. vim.fn.shellescape(file)
                .. " -o "
                .. vim.fn.shellescape(exe)
                .. " && "
                .. vim.fn.shellescape(exe),
            dir
        )

    --------------------------------------------------
    -- Rust
    --------------------------------------------------

    elseif ft == "rust" then
        local cargo = vim.fs.find("Cargo.toml", {
            upward = true,
            path = dir,
        })[1]

        if not cargo then
            vim.notify(
                "No Cargo.toml found",
                vim.log.levels.ERROR
            )

            return
        end

        local root = vim.fs.dirname(cargo)

        run_in_terminal(
            "cargo run",
            root
        )

    --------------------------------------------------
    -- Java
    --------------------------------------------------

    elseif ft == "java" then
        run_in_terminal(
            "javac "
                .. vim.fn.shellescape(file)
                .. " && java "
                .. vim.fn.shellescape(name),
            dir
        )

    --------------------------------------------------
    -- Unsupported
    --------------------------------------------------

    else
        vim.notify(
            "No runner configured for " .. ft,
            vim.log.levels.WARN
        )
    end
end, {
    desc = "Run current file",
})
