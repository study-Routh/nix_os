{ pkgs, ... }:
{	
	services.xserver.enable = true;
	services.displayManager.sddm = { 
		enable = true;
		theme = "sddm-astronaut-theme";
		
		extraPackages = with pkgs.kdePackages; [
		qtmultimedia
		];
	};
	services.displayManager.defaultSession = "hyprland";
	
	environment.systemPackages = [
		pkgs.sddm-astronaut
		
		];

	
}
