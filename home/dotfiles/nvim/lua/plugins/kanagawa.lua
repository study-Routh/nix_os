return {
	"rebelot/kanagawa.nvim",

	priority = 1000,

	config = function()
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
	end,
}
