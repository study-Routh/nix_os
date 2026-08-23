local theme = require("theme")

hl.config({
  decoration = {
    rounding = theme.geometry.rounding,
    rounding_power = theme.geometry.roundingPower,

    active_opacity = theme.effects.opacity.active,
    inactive_opacity = theme.effects.opacity.inactive,

    shadow = {
      enabled = theme.effects.shadow.enabled,
      range = theme.effects.shadow.range,
      render_power = theme.effects.shadow.renderPower,
      color = "rgba(" .. theme.effects.shadow.color .. ")",
    },

    blur = {
      enabled = theme.effects.blur.enabled,
      size = theme.effects.blur.size,
      passes = theme.effects.blur.passes,
    },
  },
})
