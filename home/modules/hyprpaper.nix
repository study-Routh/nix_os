{ config, ... }:

{
  services.hyprpaper = {
    enable = true;

    settings = {
      splash = true;
      splash_opacity = 0.8;

      wallpaper = [
        {
          monitor = "*";
          path = "${../../wallpapers/spider.png}";
          fit_mode = "cover";
        }
      ];
    };
  };
}
