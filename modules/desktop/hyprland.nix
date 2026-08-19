{ ... }:
{
	programs.hyprland = {
		enable = true;
		withUWSM = false;
	};
	systemd.user.targets.hyprland-session = {
		description = "hyprland session";
	
		bindsTo = [
			"graphical-session.target"
		];
	
		wants = [
			"graphical-session-pre.target"
		];
		
		after = [
			"graphical-session-pre.target"
		];
		
		unitConfig.PropagatesStopTo = "graphical-session.target";
	};
}
