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
		./modules/foot.nix
		./modules/zathura.nix
		./modules/yazi.nix
		./modules/btop.nix
		./modules/lazygit.nix
		./modules/imv.nix
		./modules/mpv.nix
		./modules/zsh.nix
		./modules/kitty.nix
		./modules/starship.nix
		./modules/polkit.nix
		
	];

	fonts.fontconfig.enable = true;

	home.stateVersion = "26.05";
}
