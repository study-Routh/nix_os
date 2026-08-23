{ theme, ... }:

{
  xdg.configFile."mpv/mpv.conf".text = ''
    osd-font="${theme.typography.ui}"
    osd-font-size=32

    osd-color="#${theme.colors.foreground}"
    osd-border-color="#${theme.colors.background}"
    osd-border-size=2

    osd-bar-w=40
    osd-bar-h=2
    osd-bar-outline-size=1

    osd-duration=1500
  '';
}
