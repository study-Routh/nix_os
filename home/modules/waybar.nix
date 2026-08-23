{ ... }:

{
  home.file.".config/waybar/config.jsonc" = {
    source = ../dotfiles/hypr/modules/waybar/config.jsonc;
    force = true;
  };

  home.file.".config/waybar/style.css" = {
    source = ../dotfiles/hypr/modules/waybar/style.css;
    force = true;
  };
}
