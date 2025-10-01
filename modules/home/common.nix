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

    # gui
    calibre
    anki
    gimp
    qbittorrent
    koreader
    libreoffice
    nicotine-plus
    picard
    puddletag
    bitwarden
    keepassxc

    # dev
    gcc
    python3
    lua
    lazygit
    docker

    # cli
    abcde
    sacad
    streamrip
    distrobox
    yt-dlp
    ffmpeg-full
    ripgrep
    fd
    jq
    yq-go
    file
    which
    tree
    zip
    unzip
    p7zip
    btop
    fastfetch
    gdu
    gparted
    duf
  ];
}
