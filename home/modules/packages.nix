{ pkgs, ... }:

{
	home.packages = with pkgs; [
		#core utilities
		vim
		wget
		curl
		tree
		foot
		less
		wl-clipboard
		
		#search and rendering
		ripgrep
		bat

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
