{ pkgs, ... }:
{
  programs = {
    fish.enable = true;
    nix-ld.enable = true;
    dconf.enable = true;
    localsend.enable = true;
  };
}
