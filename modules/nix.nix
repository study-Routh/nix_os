{ ... }:
{
	nix.settings.experimental-features = [
		"nix-command"
		"flakes"
	];

	#Garbage 
	# nix.gc = {
	#	automatic = true;
	#	dates = "weekly";
	#	options = "--delete-older-than 14d";
	#};
}
