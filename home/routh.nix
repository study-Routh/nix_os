{ ... }:

{
	imports = [
		./modules/theme.nix
		./modules/theme-hyprland.nix
		./modules/theme-waybar.nix
		./modules/packages.nix
		./modules/hyprland.nix
		./modules/waybar.nix
		./modules/fuzzel.nix
		./modules/swaync.nix
		./modules/cursor.nix
		./modules/gtk.nix
		./modules/icons.nix
		./modules/zsh.nix
		./modules/kitty.nix
		./modules/starship.nix
		./modules/polkit.nix
		
	];

	fonts.fontconfig.enable = true;

	home.stateVersion = "26.05";
}
