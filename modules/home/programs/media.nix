{ pkgs, ... }:
{
  programs.obs-studio = {
    enable = true;
    plugins = with pkgs.obs-studio-plugins; [
      obs-vaapi
    ];
  };

  home.packages = with pkgs; [
    (discord.override { withVencord = true; })
    vesktop
    obsidian
    calibre
    koreader
    shotcut
    kdePackages.kdenlive
    audacity
    reaper
    anki
    gimp
    qbittorrent
    vlc
  ];
}
