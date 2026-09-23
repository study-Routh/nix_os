{ ... }:

{
  home.shellAliases = {
    vi = "nvim";
    v = "nvim";
    ll = "ls -lah";
    la = "ls -A";
    nrs = "sudo nixos-rebuild switch --flake ~/nix_os#routh";
    update = "nix flake update";
    wayStart = "systemctl --user start wayscriber.service";
    wayStop = "systemctl --user stop wayscriber.service";
  };
}
