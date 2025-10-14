{ pkgs, ... }:
{
  programs.home-manager.enable = true;

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

  programs = {
    bash = {
      enable = true;
      enableCompletion = true;
    };
    fzf = {
      enable = true;
      defaultOptions = [
        "--color=16"
        "--layout=reverse"
      ];
    };
  };

  home.packages = with pkgs; [

    # gui
    calibre
    anki
    gimp
    qbittorrent
    koreader
    libreoffice
    nicotine-plus
    strawberry
    picard
    puddletag
    bitwarden
    keepassxc
    vesktop
    signal-desktop

    # dev
    gcc
    python3
    lua
    lazygit
    docker

    # cli
    abcde
    sacad
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
