{
  name = "cyan";

  colors = {
    # Base
    background = "78BDB6";
    surface = "6EAEA9";
    surfaceAlt = "A8D0C9";

    # Text
    foreground = "F4EEDC";
    muted = "D2E2DD";

    # UI
    border = "4F9694";
    accent = "F28A45";

    # States
    success = "8EBF78";
    warning = "F2B35F";
    error = "D96B62";
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
      color = "193B3B55";
    };

    blur = {
      enabled = false;
      size = 3;
      passes = 1;
    };
  };
}
