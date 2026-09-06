-- window-specific behavior rules go here

hl.window_rule({
	name = "float-modal-dialogs",

	match = {
		modal = true,
	},

	float = true,
	center = true,
})

hl.window_rule({
	name = "pwvucontrol",

	match = {
		class = "com.saivert.pwvucontrol",
	},

	float = true,
	center = true,
	size = {
		650,
		500,
	},
})
