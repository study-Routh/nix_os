{ theme, ... }:

{
  home.file.".config/waybar/theme.css".text = ''
    @define-color background #${theme.colors.background};
    @define-color surface #${theme.colors.surface};
    @define-color surface_alt #${theme.colors.surfaceAlt};

    @define-color foreground #${theme.colors.foreground};
    @define-color muted #${theme.colors.muted};

    @define-color border #${theme.colors.border};
    @define-color accent #${theme.colors.accent};

    @define-color success #${theme.colors.success};
    @define-color warning #${theme.colors.warning};
    @define-color error #${theme.colors.error};

    * {
      font-family: "${theme.typography.ui}";
    }
  '';
}
