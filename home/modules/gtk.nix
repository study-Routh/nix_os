{ pkgs, ... }:

{
  gtk = {
    enable = true;

    theme = {
      package = pkgs.adw-gtk3;
      name = "adw-gtk3-dark";
    };

    gtk3.extraConfig = {
      gtk-application-prefer-dark-theme = 1;
    };

    gtk4.extraConfig = {
      gtk-application-prefer-dark-theme = 1;
    };
  };
}
