require("kanagawa").setup({
	transparent = true,
	terminalColors = true,
	dimInactive = false,

	theme = "dragon",

	colors = {
		theme = {
			all = {
				ui = {
					bg_gutter = "none",
				},
			},
		},
	},
})

vim.cmd.colorscheme("kanagawa")
