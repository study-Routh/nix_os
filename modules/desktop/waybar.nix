{ pkgs, ... }:

{
	programs.waybar = {
		enable = true;
		systemd.target = "hyprland-session.target";
		};
}

