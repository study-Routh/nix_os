{ config, lib, pkgs, ... }:

{
  imports =
    [ 
      ./hardware-configuration.nix
    ];

#BootLoader
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.loader.systemd-boot.configurationLimit = 5;

#flakes feature on
nix.settings.experimental-features = [ "nix-command" "flakes"];

#Garbage collection
#  nix.gc = {
#	automatic = true;
#	dates = "weekly";
#	options = "--delete-older-than 14d";
#  };

#Network
  networking.hostName = "routh"; 
  networking.networkmanager.enable = true;

#timezone
  time.timeZone = "Asia/Kolkata";

#Hyprland
#  programs.hyprland = {
#	enable = true;
#	withUWSM = false;
# };

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
 ];


 system.stateVersion = "26.05"; # Did you read the comment?

}

