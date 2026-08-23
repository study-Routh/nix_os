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

            background = "#${theme.colors.background}";
            foreground = "#${theme.colors.foreground}";
	    background_opacity = "0.92";

            selection_background = "#${theme.colors.surfaceAlt}";
            selection_foreground = "#${theme.colors.foreground}";

            cursor = "#${theme.colors.accent}";
            cursor_text_color = "#${theme.colors.background}";

            url_color = "#${theme.colors.accent}";

            active_tab_background = "#${theme.colors.surfaceAlt}";
            active_tab_foreground = "#${theme.colors.foreground}";

            inactive_tab_background = "#${theme.colors.surface}";
            inactive_tab_foreground = "#${theme.colors.muted}";

            tab_bar_background = "#${theme.colors.background}";
        };
    };
}
