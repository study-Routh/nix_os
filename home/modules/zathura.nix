{ theme, ... }:

{
  xdg.configFile."zathura/zathurarc".text = ''
    set font "${theme.typography.ui} 11"

    set default-bg "#${theme.colors.background}"
    set default-fg "#${theme.colors.foreground}"

    set statusbar-bg "#${theme.colors.surface}"
    set statusbar-fg "#${theme.colors.foreground}"

    set inputbar-bg "#${theme.colors.surface}"
    set inputbar-fg "#${theme.colors.foreground}"

    set notification-bg "#${theme.colors.surface}"
    set notification-fg "#${theme.colors.foreground}"

    set notification-warning-bg "#${theme.colors.warning}"
    set notification-warning-fg "#${theme.colors.background}"

    set notification-error-bg "#${theme.colors.error}"
    set notification-error-fg "#${theme.colors.background}"

    set highlight-color "#${theme.colors.accent}"
    set highlight-active-color "#${theme.colors.accent}"
  '';
}
