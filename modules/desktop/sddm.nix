{ pkgs, ... }:

{
  services.xserver.enable = true;

  services.displayManager.sddm = {
    enable = true;
    theme = "pixel-cyberpunk";

    extraPackages = [
      pkgs.kdePackages.qtmultimedia
      pkgs.qt6Packages.qt5compat
    ];
  };

  services.displayManager.defaultSession = "hyprland";

  environment.systemPackages = [
    (pkgs.stdenv.mkDerivation {
      pname = "pixel-cyberpunk";
      version = "unstable";

      src = ./../desktop/sddm-theme/pixel-cyberpunk;

      installPhase = ''
        mkdir -p $out/share/sddm/themes/pixel-cyberpunk
        cp -r . $out/share/sddm/themes/pixel-cyberpunk/
      '';
    })
  ];
}
