{ pkgs, ... }:
{
  programs = {
    zsh.enable = true;
    fish.enable = true;
    nix-ld.enable = true;
    dconf.enable = true;
    kdeconnect.enable = true;
  };
}
