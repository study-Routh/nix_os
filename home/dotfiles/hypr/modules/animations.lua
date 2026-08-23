-- Animation configuration.

hl.config({
    animations = {
        enabled = true,
    },
})

hl.curve("quick", {
    type = "bezier",
    points = {
        { 0.16, 1.0 },
        { 0.30, 1.0 },
    },
})

hl.animation({
    leaf = "global",
    enabled = true,
    speed = 5,
    bezier = "quick",
})

hl.animation({
    leaf = "windows",
    enabled = true,
    speed = 5,
    bezier = "quick",
    style = "popin 98%",
})

hl.animation({
    leaf = "workspaces",
    enabled = true,
    speed = 5,
    bezier = "quick",
    style = "slidefade 5%",
})
