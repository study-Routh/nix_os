{ theme, ... }:

{
  xdg.configFile."imv/config".text = ''
    [options]

    background = ${theme.colors.background}

    overlay = false
    overlay_font = ${theme.typography.ui}:14

    overlay_text_color = ${theme.colors.foreground}
    overlay_text_alpha = ff

    overlay_background_color = ${theme.colors.surface}
    overlay_background_alpha = e6

    overlay_position_bottom = true
  '';
}
