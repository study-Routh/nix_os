{ theme, ... }:

{
  xdg.configFile."btop/btop.conf".text = ''
    color_theme = "graphite"
    theme_background = False
    truecolor = True

    rounded_corners = True
    graph_symbol = "braille"

    show_battery = True
    show_disks = True
    proc_tree = False
  '';

  xdg.configFile."btop/themes/graphite.theme".text = ''
    theme[main_bg]="#${theme.colors.background}"
    theme[main_fg]="#${theme.colors.foreground}"

    theme[title]="#${theme.colors.foreground}"
    theme[hi_fg]="#${theme.colors.accent}"

    theme[selected_bg]="#${theme.colors.surfaceAlt}"
    theme[selected_fg]="#${theme.colors.foreground}"

    theme[inactive_fg]="#${theme.colors.muted}"
    theme[graph_text]="#${theme.colors.muted}"
    theme[meter_bg]="#${theme.colors.surface}"

    theme[proc_misc]="#${theme.colors.accent}"

    theme[cpu_box]="#${theme.colors.border}"
    theme[mem_box]="#${theme.colors.border}"
    theme[net_box]="#${theme.colors.border}"
    theme[proc_box]="#${theme.colors.border}"
    theme[div_line]="#${theme.colors.border}"

    theme[temp_start]="#${theme.colors.success}"
    theme[temp_mid]="#${theme.colors.warning}"
    theme[temp_end]="#${theme.colors.error}"

    theme[cpu_start]="#${theme.colors.accent}"
    theme[cpu_mid]="#${theme.colors.warning}"
    theme[cpu_end]="#${theme.colors.error}"

    theme[free_start]="#${theme.colors.success}"
    theme[free_mid]="#${theme.colors.success}"
    theme[free_end]="#${theme.colors.success}"

    theme[cached_start]="#${theme.colors.accent}"
    theme[cached_mid]="#${theme.colors.accent}"
    theme[cached_end]="#${theme.colors.accent}"

    theme[available_start]="#${theme.colors.foreground}"
    theme[available_mid]="#${theme.colors.accent}"
    theme[available_end]="#${theme.colors.success}"

    theme[used_start]="#${theme.colors.warning}"
    theme[used_mid]="#${theme.colors.warning}"
    theme[used_end]="#${theme.colors.error}"

    theme[download_start]="#${theme.colors.accent}"
    theme[download_mid]="#${theme.colors.accent}"
    theme[download_end]="#${theme.colors.foreground}"

    theme[upload_start]="#${theme.colors.success}"
    theme[upload_mid]="#${theme.colors.success}"
    theme[upload_end]="#${theme.colors.foreground}"

    theme[process_start]="#${theme.colors.accent}"
    theme[process_mid]="#${theme.colors.foreground}"
    theme[process_end]="#${theme.colors.muted}"
  '';
}
