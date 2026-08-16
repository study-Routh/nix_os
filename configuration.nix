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
    ];

#timezone
  time.timeZone = "Asia/Kolkata";

  # programs.firefox.enable = true;

#packages
 environment.systemPackages = with pkgs; [
	 vim 
	 wget
	 curl
	 git
	 ripgrep
	 tree
	 btop
	foot
	tree
 ];


 system.stateVersion = "26.05"; # Did you read the comment?

}

