{ ... }:

{
  home.shellAliases = {
    vi = "nvim";
    v = "nvim";
    ll = "ls -lah";
    la = "ls -A";
    rebuild = "sudo nixos-rebuild switch --flake ~/nix_os#routh";
    nrs = "sudo nixos-rebuild switch --flake ~/nix_os#routh";
    update = "nix flake update ~/nix_os";
  };
}
