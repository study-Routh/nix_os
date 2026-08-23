local theme = require("theme")

hl.config({
  general = {
    gaps_in = theme.geometry.gapsIn,
    gaps_out = theme.geometry.gapsOut,
    border_size = theme.geometry.borderSize,

    col = {
      active_border = "rgba(" .. theme.colors.accent .. "ff)",
      inactive_border = "rgba(" .. theme.colors.border .. "cc)",
    },

    layout = "dwindle",
  },
})
