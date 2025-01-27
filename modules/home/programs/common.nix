{ pkgs, ... }:
{
  home.packages = with pkgs; [
    # packages that don't need configuration

    # files
    xfce.thunar
    xfce.thunar-volman
    xfce.thunar-archive-plugin
    xfce.tumbler
    xfce.xfconf
    ark

    # CLI
    distrobox
    yt-dlp
    gallery-dl
    ffmpeg-full
    ripgrep
    jq
    yq-go
    file
    which
    tree
    gnused
    gnutar
    gawk
    zstd
    gnupg
    zip
    xz
    unzip
    p7zip
    glow

    # System info
    bottom
    btop
    fastfetch
    neofetch
    nitch
    gdu
    gparted
  ];
}
