{ pkgs, ... }:
{
  programs = {
    hyprland = {
      enable = true;
      xwayland.enable = true;
    };
    zsh.enable = true;
    steam = {
      enable = true;
      extraCompatPackages = with pkgs; [ proton-ge-bin ];
    };
    nix-ld.enable = true;
    kdeconnect.enable = true;
    nh = {
      enable = true;
      flake = "/home/leroy/.config/dronevil";
    };
  };
}
