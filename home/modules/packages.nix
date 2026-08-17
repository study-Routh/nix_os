{ pkgs, ... }:

{
	home.packages = with pkgs; [
		vim
		wget
		curl
		ripgrep
		tree
		foot
		bat 
		less
		wl-clipboard

		# Navigation and files
	 	eza
		fd
		fzf
		zoxide
		yazi

		#system awareness
		btop
		gdu		

		# git workflow 
		git 
		gh
		lazygit
		delta
		
		# prompt / Environment
		starship

		# JSON/Data 
		jq
		
		#refrence
		tldr
	];
}
