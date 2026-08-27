{ pkgs, theme, ... }:

{
  programs.zathura = {
    enable = true;

    options = {
      font = "${theme.typography.ui} 11";

      default-bg = "#${theme.colors.background}";
      default-fg = "#${theme.colors.foreground}";

      statusbar-bg = "#${theme.colors.surface}";
      statusbar-fg = "#${theme.colors.foreground}";

      inputbar-bg = "#${theme.colors.surface}";
      inputbar-fg = "#${theme.colors.foreground}";

      notification-bg = "#${theme.colors.surface}";
      notification-fg = "#${theme.colors.foreground}";

      notification-warning-bg = "#${theme.colors.warning}";
      notification-warning-fg = "#${theme.colors.background}";

      notification-error-bg = "#${theme.colors.error}";
      notification-error-fg = "#${theme.colors.background}";

      highlight-color = "#${theme.colors.accent}";
      highlight-active-color = "#${theme.colors.accent}";
    };
  };

  xdg.mimeApps = {
    enable = true;

    defaultApplications = {
      "application/pdf" = [ "org.pwmt.zathura.desktop" ];
    };
  };
}
