{
  name = "spider";

  colors = {
    background = "101214";
    surface = "171A1E";
    surfaceAlt = "20252A";

    foreground = "F2F2F2";
    muted = "A7ADB3";

    border = "3A4046";
    accent = "E51C2A";

    success = "65B97A";
    warning = "E3A64A";
    error = "FF3344";
  };

 yazi = {
    active = {
      fg = "F2F2F2";
      bg = "E51C2A";
    };

    inactive = {
      fg = "A7ADB3";
      bg = "171A1E";
    };

    hovered = {
      fg = "F2F2F2";
      bg = "20252A";
    };
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
      color = "00000080";
    };

    blur = {
      enabled = false;
      size = 3;
      passes = 1;
    };
  };
}
