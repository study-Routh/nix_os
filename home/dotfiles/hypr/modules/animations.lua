-- Animation configuration.
--

hl.config({
	animations = {
		enabled = true,
	},
})

hl.curve("smooth",{
		type = "bezier",
		points = {
			{ 0.25, 0.1 },
			{ 0.25, 1.0 },
		}
})

hl.animation({
	leaf = "global",
	enabled = true,
	speed = 3,
	bezier = "smooth",
})

hl.animation({ 
	leaf = "windows",
	enabled = true,
	speed = 3,
	bezier = "smooth",
	style = "popin 95%",
})

hl.animation({
	leaf = "workspaces",
	enabled = true,
	speed = 3,
	bezier = "smooth",
	style = "slidefade 10%",
})
