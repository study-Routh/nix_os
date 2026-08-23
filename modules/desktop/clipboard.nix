{ pkgs, ... }:

{
	systemd.user.services.cliphist-text = {
		description = "Cliphist Text Clipboard Watcher";

		wantedBy = [ "hyprland-session.target" ];
		partOf = [ "hyprland-session.target" ];

		serviceConfig = {
			ExecStart = "${pkgs.wl-clipboard}/bin/wl-paste --type text --watch ${pkgs.cliphist}/bin/cliphist store";
			Restart = "on-failure";
	};
	};

		systemd.user.services.cliphist-image = {
		description = "Cliphist Image Clipboard Watcher";

		wantedBy = [ "hyprland-session.target" ];
		partOf = [ "hyprland-session.target" ];

		serviceConfig = {
			ExecStart = "${pkgs.wl-clipboard}/bin/wl-paste --type image --watch ${pkgs.cliphist}/bin/cliphist store";
			Restart = "on-failure";
	};
	};
}
