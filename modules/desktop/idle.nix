{ pkgs, ... }:

{
	environment.systemPackages = with pkgs; [
		hypridle
		hyprlock
	];

}
