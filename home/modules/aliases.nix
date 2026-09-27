{ ... }:

{
  home.shellAliases = {
    vi = "nvim";
    v = "nvim";
    ll = "ls -lah";
    la = "ls -A";
    nrs = "sudo nixos-rebuild switch --flake #routh";
    update = "nix flake update";
  };
}
