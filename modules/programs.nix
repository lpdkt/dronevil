{ pkgs, ... }:
{
  programs = {
    hyprland = {
      enable = true;
      xwayland.enable = true;
    };
    zsh.enable = true;
    fish.enable = true;
    nix-ld.enable = true;
    kdeconnect.enable = true;
    nh = {
      enable = true;
      flake = "/home/leroy/.config/dronevil";
    };
  };
}
