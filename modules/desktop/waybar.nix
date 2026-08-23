{ pkgs, ... }:

{
	programs.waybar.enable = true;

	systemd.user.services.waybar = {
		description = "Waybar";

		wantedBy = [ "hyprland-session.target"];
		partOf = ["hyprland-session.target"];

		serviceConfig = {
			ExexStart = "${pkgs.waybar}/bin/waybar -c /home/routh/nix_os/home/dotfiles/hypr/modules/waybar/config.jsonc -s  /home/routh/nix_os/home/dotfiles/hypr/modules/waybar/style.css"; 
			Restart = "on-failure";
		};
	};
}

