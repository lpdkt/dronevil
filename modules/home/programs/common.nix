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
    fzf
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
    glow
    zip
    xz
    unzip
    p7zip

    # System info
    bottom
    btop
    fastfetch
    pfetch
    neofetch
    gdu
    gparted
  ];
}
