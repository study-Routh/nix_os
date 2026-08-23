{ theme, ... }:

{
  xdg.configFile."yazi/theme.toml".text = ''
       [mgr]
    cwd = { fg = "#${theme.colors.accent}", bold = true }

    hovered = { fg = "#${theme.colors.foreground}", bg = "#${theme.colors.surfaceAlt}" }
    preview_hovered = { underline = true }

    find_keyword = { fg = "#${theme.colors.warning}", bold = true }
    find_position = { fg = "#${theme.colors.muted}" }

    marker_copied = { fg = "#${theme.colors.success}" }
    marker_cut = { fg = "#${theme.colors.error}" }
    marker_marked = { fg = "#${theme.colors.accent}" }
    marker_selected = { fg = "#${theme.colors.accent}" }

    border_style = { fg = "#${theme.colors.border}" }

    [tabs]
    active = { fg = "#${theme.colors.background}", bg = "#${theme.colors.accent}", bold = true }
    inactive = { fg = "#${theme.colors.muted}", bg = "#${theme.colors.surface}" }

    [mode]
    normal_main = { fg = "#${theme.colors.background}", bg = "#${theme.colors.accent}", bold = true }
    normal_alt = { fg = "#${theme.colors.foreground}", bg = "#${theme.colors.surfaceAlt}" }

    select_main = { fg = "#${theme.colors.background}", bg = "#${theme.colors.warning}", bold = true }
    select_alt = { fg = "#${theme.colors.foreground}", bg = "#${theme.colors.surfaceAlt}" }

    unset_main = { fg = "#${theme.colors.background}", bg = "#${theme.colors.error}", bold = true }
    unset_alt = { fg = "#${theme.colors.foreground}", bg = "#${theme.colors.surfaceAlt}" }
  '';
}
