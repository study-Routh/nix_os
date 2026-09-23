{ config, pkgs, ... }:

{
  # Wayscriber is installed in home/modules/packages.nix

  systemd.user.services.wayscriber = {
    Unit = {
      Description = "Wayscriber annotation daemon";
      After = [ "graphical-session.target" ];
      PartOf = [ "graphical-session.target" ];
    };

    Service = {
      ExecStart = "${pkgs.wayscriber}/bin/wayscriber --daemon";
      Restart = "on-failure";
      RestartSec = 2;
    };
  };
}
