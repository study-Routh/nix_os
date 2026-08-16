{ config, lib, pkgs, ... }:

{
  imports =
    [ 
      ./hardware-configuration.nix
      ./modules/networking.nix
      ./modules/boot.nix
      ./modules/nix.nix
    ];

#timezone
  time.timeZone = "Asia/Kolkata";

#Hyprland
  programs.hyprland = {
	enable = true;
	withUWSM = false;
 };

#users
 users.users.routh = {
   isNormalUser = true;
   extraGroups = [ "wheel" "networkmanager" ]; # Enable ‘sudo’ for the user.
 initialPassword = "nixos";
   packages = with pkgs; [
     tree
   ];
 };

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
 ];


 system.stateVersion = "26.05"; # Did you read the comment?

}

