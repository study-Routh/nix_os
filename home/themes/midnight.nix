{
  name = "midnight";

  colors = {
    background = "0B1020";
    surface = "11182A";
    surfaceAlt = "18223A";

    foreground = "DCE7FF";
    muted = "7F8EAA";

    border = "273657";
    accent = "55C7FF";

    success = "69D6B0";
    warning = "F2C879";
    error = "F08080";
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
