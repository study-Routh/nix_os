local theme = require("desktop_theme")
local c = theme.colors

vim.o.background = "dark"
vim.g.colors_name = "graphite"

vim.cmd("highlight clear")

local function hi(group, opts)
    vim.api.nvim_set_hl(0, group, opts)
end

-- Editor
hi("Normal",          { fg = c.foreground, bg = c.background })
hi("NormalFloat",     { fg = c.foreground, bg = c.surface })
hi("FloatBorder",     { fg = c.border, bg = c.surface })

hi("CursorLine",      { bg = c.surface })
hi("LineNr",          { fg = c.muted })
hi("CursorLineNr",    { fg = c.accent, bold = true })
hi("SignColumn",      { bg = c.background })

hi("Visual",          { bg = c.surfaceAlt })
hi("Search",          { fg = c.background, bg = c.warning })
hi("IncSearch",       { fg = c.background, bg = c.accent })

-- Menus
hi("Pmenu",           { fg = c.foreground, bg = c.surface })
hi("PmenuSel",        { fg = c.foreground, bg = c.surfaceAlt })
hi("PmenuSbar",       { bg = c.surface })
hi("PmenuThumb",      { bg = c.border })

-- Windows / status
hi("WinSeparator",    { fg = c.border })
hi("StatusLine",      { fg = c.foreground, bg = c.surface })
hi("StatusLineNC",    { fg = c.muted, bg = c.surface })

-- Syntax
hi("Comment",         { fg = c.muted, italic = true })

hi("String",          { fg = c.success })
hi("Character",       { fg = c.success })

hi("Number",          { fg = c.warning })
hi("Boolean",         { fg = c.warning })
hi("Float",           { fg = c.warning })

hi("Identifier",      { fg = c.foreground })
hi("Function",        { fg = c.accent })

hi("Statement",       { fg = c.accent })
hi("Keyword",         { fg = c.accent })
hi("Conditional",     { fg = c.accent })
hi("Repeat",          { fg = c.accent })
hi("Operator",        { fg = c.muted })

hi("Type",            { fg = c.warning })
hi("StorageClass",    { fg = c.warning })
hi("Structure",       { fg = c.warning })

hi("PreProc",         { fg = c.accent })
hi("Include",         { fg = c.accent })

hi("Special",         { fg = c.accent })
hi("Delimiter",       { fg = c.muted })

-- Diagnostics
hi("DiagnosticError", { fg = c.error })
hi("DiagnosticWarn",  { fg = c.warning })
hi("DiagnosticInfo",  { fg = c.accent })
hi("DiagnosticHint",  { fg = c.muted })

-- Diff
hi("DiffAdd",         { fg = c.success })
hi("DiffChange",      { fg = c.warning })
hi("DiffDelete",      { fg = c.error })
hi("DiffText",        { fg = c.accent, bold = true })

-- Misc
hi("ErrorMsg",        { fg = c.error })
hi("WarningMsg",      { fg = c.warning })
hi("Todo",            { fg = c.background, bg = c.warning, bold = true })
