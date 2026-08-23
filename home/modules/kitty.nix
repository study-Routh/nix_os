{ theme, ... }:

{
	programs.kitty = {
		enable = true;

		font = {
			name = theme.typography.mono;
			size = 15;
		};

		shellIntegration = {
			enableZshIntegration = true;
		};

		settings = {
			shell = "zsh";
			scrollback_lines = 500;

			enable_audio_bell = false;

			cursor_shape = "block";
			cursor_blink_interval = 0;

			copy_on_select = false;
			strip_trailing_spaces = "smart";

			allow_remote_control = false;
		};
	};
}

