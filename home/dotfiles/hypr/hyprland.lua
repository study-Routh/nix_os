require("modules.monitor")
hl.config({



	general = {
		gaps_in = 5,
		gaps_out = 10,
		border_size = 2,
		layout = "dwindle",
	},

	decoration = {
		rounding = 8,
		shadow = {
			enabled = false,
		},
		blur = {
			enabled = false,
		},
	},


})

local mainMod = "SUPER"

hl.bind(mainMod .. " + RETURN", hl.dsp.exec_cmd("foot"))
hl.bind(mainMod .. " + Q", hl.dsp.window.close())
hl.bind(mainMod .. " + M", hl.dsp.exit())


