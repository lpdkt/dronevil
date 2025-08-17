{ pkgs, ... }:
{
  home = {
    sessionVariables = {
      TERMINAL = "foot";
      EDITOR = "nvim";
      SHELL = "zsh";
    };
    stateVersion = "24.11";
  };

  nix.gc = {
    automatic = true;
    frequency = "weekly";
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

    # gui apps
    vesktop
    calibre
    anki
    gimp
    qbittorrent
    koreader
    signal-desktop
    libreoffice
    feishin
    nicotine-plus
    picard
    puddletag

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

    # system info
    btop
    fastfetch
    gdu
    gparted
    dysk
  ];
}
