require("modules.monitor")
require("modules.general")
hl.config({


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


