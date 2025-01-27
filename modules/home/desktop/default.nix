{ pkgs, ... }:
{
  imports = [
    ./dunst.nix
    ./foot.nix
    ./fuzzel.nix
    ./gtk.nix
    ./hyprland
    ./waybar
  ];

  home.packages = with pkgs; [
    networkmanagerapplet
    gammastep
    libnotify
    grim
    slurp
    wl-clipboard
    pavucontrol
    pamixer
    playerctl
    brightnessctl
  ];
}
