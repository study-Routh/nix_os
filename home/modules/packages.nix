{ pkgs, ... }:

{
	home.packages = with pkgs; [
		vim
		wget
		curl
		git
		ripgrep
		tree
		btop
		foot
	];
}
