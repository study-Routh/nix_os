{ theme, ... }:

{
  home.file.".config/hypr/theme.lua".text = ''
    return {
      colors = {
        background = "${theme.colors.background}",
        surface = "${theme.colors.surface}",
        surfaceAlt = "${theme.colors.surfaceAlt}",

        foreground = "${theme.colors.foreground}",
        muted = "${theme.colors.muted}",

        border = "${theme.colors.border}",
        accent = "${theme.colors.accent}",

        success = "${theme.colors.success}",
        warning = "${theme.colors.warning}",
        error = "${theme.colors.error}",
      },

      geometry = {
        gapsIn = ${toString theme.geometry.gapsIn},
        gapsOut = ${toString theme.geometry.gapsOut},
        borderSize = ${toString theme.geometry.borderSize},
        rounding = ${toString theme.geometry.rounding},
	roundingPower = ${toString theme.geometry.roundingPower},
      },
    

effects = {

	opacity = {
		active = ${toString theme.effects.opacity.active},
		inactive = ${toString theme.effects.opacity.inactive},
},

        shadow = {
          enabled = ${if theme.effects.shadow.enabled then "true" else "false"},
          range = ${toString theme.effects.shadow.range},
          renderPower = ${toString theme.effects.shadow.renderPower},
          color = "${theme.effects.shadow.color}",
        },

        blur = {
          enabled = ${if theme.effects.blur.enabled then "true" else "false"},
          size = ${toString theme.effects.blur.size},
          passes = ${toString theme.effects.blur.passes},
        },
      },
}
  '';
}
