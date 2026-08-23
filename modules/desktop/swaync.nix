{ pkgs, ... }:

{
	environment.systemPackages = with pkgs; [
	swaynotificationcenter
	libnotify
	];
	
	systemd.user.services.swaync = {
		description = "Sway Notification center";
	
	wantedBy = [ "hyprland-session.target" ];
	partOf = [ "hyprland-session.target" ];

	serviceConfig = {
		ExecStart = "${pkgs.swaynotificationcenter}/bin/swaync";
		Restart = "on-failure";
};
};
}
