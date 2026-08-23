{ theme, ... }:

{
  programs.fuzzel = {
    enable = true;

    settings = {
      main = {
        font = "${theme.typography.ui}:size=13";
        width = 42;
        lines = 8;

        horizontal-pad = 18;
        vertical-pad = 12;
        inner-pad = 8;

        layer = "overlay";
        terminal = "kitty";
      };

      colors = {
        background = "${theme.colors.background}e6";
        text = "${theme.colors.foreground}ff";
        prompt = "${theme.colors.muted}ff";
        placeholder = "${theme.colors.muted}ff";

        input = "${theme.colors.foreground}ff";
        match = "${theme.colors.accent}ff";

        selection = "${theme.colors.surfaceAlt}f2";
        selection-text = "${theme.colors.foreground}ff";
        selection-match = "${theme.colors.accent}ff";

        border = "${theme.colors.border}ff";
      };

      border = {
        width = 1;
        radius = 8;
      };
    };
  };
}
