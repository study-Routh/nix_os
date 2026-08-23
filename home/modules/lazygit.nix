{ theme, ... }:

{
  xdg.configFile."lazygit/config.yml".text = ''
    gui:
      theme:
        activeBorderColor:
          - "#${theme.colors.accent}"
          - bold

        inactiveBorderColor:
          - "#${theme.colors.border}"

        searchingActiveBorderColor:
          - "#${theme.colors.warning}"
          - bold

        optionsTextColor:
          - "#${theme.colors.accent}"

        selectedLineBgColor:
          - "#${theme.colors.surfaceAlt}"

        inactiveViewSelectedLineBgColor:
          - "#${theme.colors.surface}"

        cherryPickedCommitFgColor:
          - "#${theme.colors.accent}"

        cherryPickedCommitBgColor:
          - default

        markedBaseCommitFgColor:
          - "#${theme.colors.warning}"

        markedBaseCommitBgColor:
          - default

        unstagedChangesColor:
          - "#${theme.colors.error}"

      authorColors:
        "*": "#${theme.colors.accent}"

      showListFooter: true
      showCommandLog: false
      showBottomLine: true
      showPanelJumps: false
  '';
}
