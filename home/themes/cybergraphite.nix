{
  name = "cybergraphite";

  colors = {
    background = "0B0E12";
    surface = "151A21";
    surfaceAlt = "1B222B";

    foreground = "D7DBE2";
    muted = "737B87";

    border = "2A323C";
    accent = "7E3038";

    success = "6F9B7A";
    warning = "B08A5A";
    error = "A63D47";
  };

  typography = {
    mono = "JetBrainsMono Nerd Font";
    ui = "JetBrainsMono Nerd Font";
  };

  geometry = {
    gapsIn = 5;
    gapsOut = 10;
    borderSize = 2;
    rounding = 8;
    roundingPower = 2;
  };

  effects = {
    opacity = {
      active = 1.0;
      inactive = 0.96;
    };

    shadow = {
      enabled = true;
      range = 8;
      renderPower = 3;
      color = "00000055";
    };

    blur = {
      enabled = false;
      size = 3;
      passes = 1;
    };
  };
}
