{ pkgs, ... }:
{
  imports = [
    ./dunst.nix
    ./foot.nix
    ./fuzzel.nix
    ./gammastep.nix
    ./gtk.nix
    ./hyprland
    ./waybar.nix
  ];

  services = {
    network-manager-applet.enable = true;
  };

  home.packages = with pkgs; [
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
