{ theme, ... }:

{
  programs.hyprlock = {
    enable = true;

    # Hyprlock is already installed system-wide in modules/desktop/idle.nix.
    package = null;

    settings = {
      general = {
        hide_cursor = true;
        ignore_empty_input = true;
      };

      background = [
        {
          monitor = "";
          path = "screenshot";

          blur_passes = 3;
          blur_size = 6;
        }
      ];

      label = [
        {
          monitor = "";

          text = "$TIME";
          color = "rgb(${theme.colors.foreground})";

          font_size = 64;
          font_family = theme.typography.ui;

          position = "0, 120";
          halign = "center";
          valign = "center";
        }
        {
          monitor = "";

          text = "Welcome back";
          color = "rgb(${theme.colors.muted})";

          font_size = 14;
          font_family = theme.typography.ui;

          position = "0, 62";
          halign = "center";
          valign = "center";
        }
      ];

      input-field = [
        {
          monitor = "";

          size = "280, 48";
          position = "0, -40";

          dots_center = true;
          fade_on_empty = false;

          font_color = "rgb(${theme.colors.foreground})";
          inner_color = "rgb(${theme.colors.background})";
          outer_color = "rgb(${theme.colors.border})";

          outline_thickness = 2;

          placeholder_text =
            "<span foreground=\"##${theme.colors.muted}\">Password...</span>";
        }
      ];
    };
  };
}
