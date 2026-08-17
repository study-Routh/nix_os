{ config, lib, pkgs, ... }:

{
  imports =
    [ 
      ./hardware-configuration.nix
      ./modules/networking.nix
      ./modules/boot.nix
      ./modules/nix.nix
      ./modules/users.nix
      ./modules/desktop/hyprland.nix
      ./modules/shells.nix
    ];

#timezone
  time.timeZone = "Asia/Kolkata";


 system.stateVersion = "26.05"; # Did you read the comment?

}

