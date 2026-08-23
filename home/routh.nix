{ ... }:

{
	imports = [
		./modules/theme.nix
		./modules/theme-hyprland.nix
		./modules/packages.nix
		./modules/hyprland.nix
		./modules/zsh.nix
		./modules/kitty.nix
		./modules/starship.nix
		./modules/polkit.nix
	];

	fonts.fontconfig.enable = true;

	home.stateVersion = "26.05";
}
