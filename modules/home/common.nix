{ pkgs, ... }:
{
  home = {
    sessionVariables = {
      TERMINAL = "foot";
      EDITOR = "nvim";
      SHELL = "fish";
      XDG_SESSION_TYPE = "wayland";
      GDK_BACKEND = "wayland,x11,*";
      NIXOS_OZONE_WL = 1;
      MOZ_ENABLE_WAYLAND = 1;
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
    vesktop

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
