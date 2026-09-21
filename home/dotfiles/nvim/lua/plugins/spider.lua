return {
	"rebelot/kanagawa.nvim",

	priority = 1000,

	config = function()
		require("kanagawa").setup({
			transparent = true,
			terminalColors = true,
			dimInactive = false,

			colors = {
				palette = {
					-- Backgrounds
					sumiInk0 = "#101214",
					sumiInk1 = "#101214",
					sumiInk2 = "#171A1E",
					sumiInk3 = "#20252A",
					sumiInk4 = "#3A4046",
					sumiInk5 = "#3A4046",
					sumiInk6 = "#3A4046",

					-- Foreground
					fujiWhite = "#F2F2F2",
					oldWhite = "#F2F2F2",
					fujiGray = "#A7ADB3",

					-- Main Spider colors
					waveRed = "#E51C2A",
					samuraiRed = "#FF3344",
					autumnRed = "#FF3344",

					-- Secondary colors
					autumnGreen = "#65B97A",
					springGreen = "#65B97A",

					roninYellow = "#E3A64A",
					autumnYellow = "#E3A64A",
					boatYellow2 = "#E3A64A",

					oniViolet = "#B58CFF",
					springViolet1 = "#B58CFF",
					springViolet2 = "#B58CFF",

					crystalBlue = "#A7ADB3",
					springBlue = "#A7ADB3",
					waveBlue1 = "#20252A",
					waveBlue2 = "#20252A",

					waveAqua1 = "#65B97A",
					waveAqua2 = "#65B97A",

					dragonBlue = "#A7ADB3",
					dragonViolet = "#B58CFF",
					dragonGreen = "#65B97A",
					dragonRed = "#FF3344",
					dragonYellow = "#E3A64A",
					dragonOrange = "#E3A64A",
				},

				theme = {
					all = {
						ui = {
							bg_gutter = "none",
						},
					},
				},
			},

			overrides = function(colors)
				return {
					Normal = {
						fg = "#F2F2F2",
						bg = "#101214",
					},

					NormalFloat = {
						fg = "#F2F2F2",
						bg = "#171A1E",
					},

					FloatBorder = {
						fg = "#3A4046",
						bg = "#171A1E",
					},

					CursorLine = {
						bg = "#171A1E",
					},

					Visual = {
						bg = "#20252A",
					},

					LineNr = {
						fg = "#737B87",
					},

					CursorLineNr = {
						fg = "#FF3344",
						bold = true,
					},

					WinSeparator = {
						fg = "#3A4046",
					},

					Search = {
						fg = "#101214",
						bg = "#E3A64A",
						bold = true,
					},

					IncSearch = {
						fg = "#F2F2F2",
						bg = "#E51C2A",
						bold = true,
					},

					Pmenu = {
						fg = "#F2F2F2",
						bg = "#171A1E",
					},

					PmenuSel = {
						fg = "#101214",
						bg = "#E51C2A",
						bold = true,
					},

					Directory = {
						fg = "#E51C2A",
						bold = true,
					},

					ErrorMsg = {
						fg = "#FF3344",
						bold = true,
					},

					WarningMsg = {
						fg = "#E3A64A",
						bold = true,
					},

					DiagnosticError = {
						fg = "#FF3344",
					},

					DiagnosticWarn = {
						fg = "#E3A64A",
					},

					DiagnosticInfo = {
						fg = "#A7ADB3",
					},

					DiagnosticHint = {
						fg = "#65B97A",
					},
				}
			end,
		})

		vim.cmd("colorscheme kanagawa")
	end,
}
