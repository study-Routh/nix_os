{ config, lib, pkgs, ... }:

{
  imports =
    [ 
      ./hardware-configuration.nix
      ./modules/networking.nix
      ./modules/boot.nix
      ./modules/nix.nix
      ./modules/users.nix
      ./modules/desktop/default.nix
      ./modules/shells.nix
      ./modules/security.nix
      ./modules/gtk.nix
      ./modules/fonts.nix
      ./modules/hardware_tweaks/opentabletdriver.nix
    ];

#timezone
  time.timeZone = "Asia/Kolkata";

services.flatpak.enable = true;

 system.stateVersion = "26.05"; # Did you read the comment?

}

