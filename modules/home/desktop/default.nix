{ pkgs, ... }:
{
  imports = [
    ./waybar
    ./hyprlock.nix
    ./foot.nix
    ./fuzzel.nix
    ./gammastep.nix
    ./gtk.nix
    ./mako.nix
    ./river.nix
    ./swww.nix
  ];

  services = {
    network-manager-applet.enable = true;
  };

  home.packages = with pkgs; [
    xfce.thunar
    xfce.thunar-volman
    xfce.tumbler
    xfce.xfconf
    ffmpegthumbnailer
    libnotify
    grim
    slurp
    wl-clipboard
    pavucontrol
    pamixer
    playerctl
    brightnessctl
    wlopm
    wlr-randr
  ];
}
