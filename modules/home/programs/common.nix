{ pkgs, ... }:
{
  home.packages = with pkgs; [
    # packages that don't need configuration

    # files
    xfce.thunar
    xfce.thunar-volman
    xfce.tumbler
    ffmpegthumbnailer

    # safety
    mullvad-vpn
    bitwarden

    # dev
    gcc
    python3
    lua
    lazygit
    lazydocker
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
    nitch
    gdu
    gparted
  ];
}
