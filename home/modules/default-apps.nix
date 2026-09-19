{ ... }:

{
  home.sessionVariables = {
    EDITOR = "nvim";
    VISUAL = "nvim";
    BROWSER = "brave";
  };

  xdg.mimeApps = {
    enable = true;

    defaultApplications = {
      # File manager
      "inode/directory" = [ "yazi.desktop" ];

      # Web
      "text/html" = [ "brave-browser.desktop" ];
      "x-scheme-handler/http" = [ "brave-browser.desktop" ];
      "x-scheme-handler/https" = [ "brave-browser.desktop" ];
      "application/pdf" = [ "brave-browser.desktop" ];
      # Images
      "image/png" = [ "imv.desktop" ];
      "image/jpeg" = [ "imv.desktop" ];

      # Video
      "video/mp4" = [ "mpv.desktop" ];
    };
  };
}
