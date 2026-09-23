{ pkgs, ... }:

let
  sword-theme = pkgs.stdenvNoCC.mkDerivation {
    pname = "sword-sddm-theme";
    version = "unstable";

    src = pkgs.fetchFromGitHub {
      owner = "Darkkal44";
      repo = "qylock";
      rev = "main";
      hash = "sha256-ELHBl+9ueNJhoNYRioSIHb/K7f+SNsesG/+X5ijA+NA=";
    };

    installPhase = ''
      mkdir -p $out/share/sddm/themes
      cp -r themes/sword $out/share/sddm/themes/sword
    '';
  };
in
{
  services.xserver.enable = true;

  services.displayManager.sddm = {
    enable = true;
    wayland.enable = true;

    theme = "sword";

    extraPackages = [
      sword-theme
      pkgs.kdePackages.qtmultimedia
      pkgs.qt6Packages.qt5compat
    ];
  };

  environment.systemPackages = [
    sword-theme
  ];

  services.displayManager.defaultSession = "hyprland";
}
