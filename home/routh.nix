{ ... }:

{
	imports = [
		./modules/packages.nix
		./modules/hyprland.nix
		./modules/zsh.nix
		./modules/kitty.nix
		./modules/starship.nix
	];

	home.stateVersion = "26.05";
}
