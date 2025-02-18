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

    # safety
    mullvad-vpn
    bitwarden
    keepassxc

    # dev
    python3
    lua
    lazygit
    docker

    # cli
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

    # system info
    btop
    fastfetch
    neofetch
    gdu
    gparted
  ];
}
