{ pkgs, inputs, ... }:
{
  home = {
    sessionVariables = {
      TERMINAL = "foot";
      EDITOR = "nvim";
      SHELL = "fish";
    };
    stateVersion = "24.11";
  };

  nix.gc = {
    automatic = true;
    dates = "weekly";
    options = "--delete-older-than 7d";
  };

  programs.home-manager.enable = true;

  home.packages = with pkgs; [

    # files
    xfce.thunar
    xfce.thunar-volman
    xfce.tumbler
    xfce.xfconf
    ffmpegthumbnailer

    # gui
    calibre
    anki
    gimp
    qbittorrent
    koreader
    signal-desktop
    vesktop
    libreoffice
    tidal-hifi
    nicotine-plus
    strawberry
    picard
    puddletag
    freetube
    bitwarden
    keepassxc

    # dev
    gcc
    python3
    lua
    lazygit
    docker

    # cli
    streamrip
    abcde
    sacad
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
    btop
    fastfetch
    gdu
    gparted
    dysk
  ];
}
