{ pkgs, theme, ... }:

let
  nvimConfig = pkgs.runCommand "nvim-config" {} ''
    mkdir -p $out
    cp -r ${../dotfiles/nvim}/. $out/
    chmod -R u+w $out

    cat > $out/lua/desktop_theme.lua <<'EOF'
    return {
      name = "${theme.name}",

      colors = {
        background = "#${theme.colors.background}",
        surface = "#${theme.colors.surface}",
        surfaceAlt = "#${theme.colors.surfaceAlt}",

        foreground = "#${theme.colors.foreground}",
        muted = "#${theme.colors.muted}",

        border = "#${theme.colors.border}",
        accent = "#${theme.colors.accent}",

        success = "#${theme.colors.success}",
        warning = "#${theme.colors.warning}",
        error = "#${theme.colors.error}",
      },
    }
    EOF
  '';
in
{
  xdg.configFile."nvim" = {
    source = nvimConfig;
    recursive = true;
  };
}
