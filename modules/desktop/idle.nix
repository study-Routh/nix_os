{ pkgs, ... }:

{
	environment.systemPackages = with pkgs; [
		hypridle
		hyprlock
	];
	
	security.pam.services.hyprlock = {};

}
