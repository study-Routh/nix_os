{ ... }:
{	
		home.file.".config/hypr/hyprland.lua" = {
			source = ../dotfiles/hypr/hyprland.lua;
			force = true;
		};

		home.file.".config/hypr/modules" = {
			source = ../dotfiles/hypr/modules;
			force = true;
		};
}
