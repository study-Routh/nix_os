{ pkgs, ... }:

let
  theme = import ../../home/themes/graphite.nix;

  sddmAstronaut = pkgs.sddm-astronaut.override {
    embeddedTheme = "black_hole";

    themeConfig = {
      RoundCorners = toString theme.geometry.rounding;

      HeaderTextColor = "#${theme.colors.muted}";
      DateTextColor = "#${theme.colors.muted}";
      TimeTextColor = "#${theme.colors.foreground}";

      FormBackgroundColor = "#${theme.colors.background}";
      BackgroundColor = "#${theme.colors.background}";
      DimBackgroundColor = "#${theme.colors.background}";

      LoginFieldBackgroundColor = "#${theme.colors.surface}";
      PasswordFieldBackgroundColor = "#${theme.colors.surface}";

      LoginFieldTextColor = "#${theme.colors.foreground}";
      PasswordFieldTextColor = "#${theme.colors.foreground}";
      PlaceholderTextColor = "#${theme.colors.muted}";

      UserIconColor = "#${theme.colors.foreground}";
      PasswordIconColor = "#${theme.colors.foreground}";

      LoginButtonTextColor = "#${theme.colors.background}";
      LoginButtonBackgroundColor = "#${theme.colors.accent}";

      SystemButtonsIconsColor = "#${theme.colors.foreground}";
      SessionButtonTextColor = "#${theme.colors.foreground}";

      WarningColor = "#${theme.colors.error}";

      DropdownTextColor = "#${theme.colors.foreground}";
      DropdownBackgroundColor = "#${theme.colors.surface}";
      DropdownSelectedBackgroundColor = "#${theme.colors.surfaceAlt}";

      HighlightTextColor = "#${theme.colors.background}";
      HighlightBackgroundColor = "#${theme.colors.accent}";
      HighlightBorderColor = "#${theme.colors.accent}";

      DimBackground = "0.15";
    };
  };
in

{
  services.xserver.enable = true;

  services.displayManager.sddm = {
    enable = true;
    theme = "sddm-astronaut-theme";

    extraPackages = [
      pkgs.kdePackages.qtmultimedia
    ];
  };

  services.displayManager.defaultSession = "hyprland";

  environment.systemPackages = [
    sddmAstronaut
  ];
}
