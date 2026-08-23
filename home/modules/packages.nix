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

		#screen-shot and clipboard
		slurp   	#choose screen region 
		grim 		#capture it
		wl-clipboard
		cliphist
		
		#search and rendering
		ripgrep
		bat

		# Navigation and files
	 	eza
		fd
		fzf
		zoxide

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
		
		#Desktop environment comp.
		fuzzel
		
		#volume
		playerctl

		
		#file explorer
		yazi

		#screen-rec
		obs-studio

		#pciutils
		pciutils
		usbutils

		#Media 
		mpv
		imv
		
		#Documents 
		zathura

		#Archives
		zip
		unzip
		p7zip

		#browser 
		brave	
		
		#Fonts
		nerd-fonts.jetbrains-mono
	
		#wallpaper
		hyprpaper

	];
}
