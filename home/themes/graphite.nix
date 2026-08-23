{
  name = "graphite";

  colors = {
    background = "111318";
    surface = "171a20";
    surfaceAlt = "1d222a";

    foreground = "d8dde6";
    muted = "858d99";

    border = "2b313b";
    accent = "8297b3";

    success = "8ca58a";
    warning = "b69b6b";
    error = "b97a7a";
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

