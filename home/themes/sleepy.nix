{
  name = "sleepy";

  colors = {
    # Base
    background = "F4F1E8";
    surface = "FFFDF6";
    surfaceAlt = "EAE5D8";

    # Text
    foreground = "3B3542";
    muted = "7A7180";

    # UI
    border = "D8CFBF";
    accent = "E8796F";

    # States
    success = "6FB98F";
    warning = "E5A85B";
    error = "D95F63";
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
      color = "3B354230";
    };

    blur = {
      enabled = false;
      size = 3;
      passes = 1;
    };
  };
}
