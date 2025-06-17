{ pkgs, ... }:
{
  home.packages = with pkgs; [
    # packages that don't need configuration

    # files
    xfce.thunar
    xfce.thunar-volman
    xfce.tumbler
    xfce.xfconf
    ffmpegthumbnailer

    # safety
    mullvad-vpn
    bitwarden
    keepassxc

    # dev
    gcc
    python3
    lua
    lazygit
    docker
    vscode

    # cli
    distrobox
    yt-dlp
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

    # system info
    btop
    fastfetch
    gdu
    gparted
    dysk
  ];
}
