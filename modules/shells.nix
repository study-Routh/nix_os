{ pkgs, ... }:

{
	programs.zsh.enable = true;

	programs.fzf = {
		keybindings = true;
		fuzzyCompletion = true;
	};
	
	programs.zoxide = {
		enable = true;
		enableZshIntegration = true;
	};
	
	environment.shells = with pkgs; [
		zsh
	];
	users.users.routh.shell = pkgs.zsh;
}
