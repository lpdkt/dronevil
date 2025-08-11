{ pkgs, ... }:
{
  programs.obs-studio = {
    enable = true;
    plugins = with pkgs.obs-studio-plugins; [ obs-vaapi ];
  };

  home.packages = with pkgs; [
    vesktop
    obsidian
    calibre
    kdePackages.kdenlive
    audacity
    anki
    gimp
    qbittorrent
    koreader
    signal-desktop
    komikku
  ];
}
