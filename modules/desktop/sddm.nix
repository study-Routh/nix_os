{ pkgs, ... }:

{
  services.xserver.enable = true;

  services.displayManager.sddm = {
    enable = true;
    wayland.enable = true;

    extraPackages = [
      pkgs.kdePackages.qtmultimedia
      pkgs.qt6Packages.qt5compat
    ];
  };

  services.displayManager.defaultSession = "hyprland";

  programs.qylock = {
    enable = true;

    theme = "sword";

    sddm.enable = true;
    quickshell.enable = false;
  };
}
