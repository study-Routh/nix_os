{ theme, ... }:

{
  xdg.configFile."foot/foot.ini".text = ''
    [main]
    font=${theme.typography.mono}:size=15
    pad=8x8

    [colors-dark]
    alpha=0.92

    background=${theme.colors.background}
    foreground=${theme.colors.foreground}

    selection-background=${theme.colors.surfaceAlt}
    selection-foreground=${theme.colors.foreground}
  '';
}
