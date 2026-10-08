{ config, ... }:

{
  services.hyprpaper = {
    enable = true;

    settings = {
      
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
