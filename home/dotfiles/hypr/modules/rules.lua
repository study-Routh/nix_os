-- window-specific behavior rules go here 

hl.window_rule({
    name = "float-modal-dialogs",

    match = {
        modal = true,
    },

    float = true,
    center = true,
})
