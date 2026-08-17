{ pkgs, ... }:

{
	programs.zsh.enable = true;
	
	environment.shells = with pkgs; [
		zsh
	];
	users.users.routh.shell = pkgs.zsh;
}
