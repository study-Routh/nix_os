return {
	"folke/which-key.nvim",

	event = "VeryLazy",

	opts = {
		preset = "modern",

		delay = 300,

		win = {
			border = "single",
			no_overlap = false,

			-- Right side
			col = math.huge,
			row = 1,

			width = 38,
			height = {
				min = 10,
				max = 30,
			},

			padding = { 1, 2 },
			title = " Keymaps ",
			title_pos = "center",
		},

		-- Keep entries mostly vertical
		layout = {
			width = {
				min = 30,
				max = 34,
			},
			spacing = 1,
		},

		icons = {
			breadcrumb = "»",
			separator = "→",
			group = "+",
		},
	},

	keys = {
		{
			"<leader>`",
			function()
				require("which-key").show()
			end,
			desc = "Show keymaps",
		},
	},
}
