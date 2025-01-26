{ pkgs, ... }:

{
  programs.zsh = {
    enable = true;
    syntaxHighlighting.enable = true;

    oh-my-zsh = {
      enable = true;
      plugins = [
        "git"
        "sudo"
      ];
    };

    envExtra = ''
      path+=("$HOME/bin")
      path+=("$HOME/.local/share/go/bin")
      export PATH
    '';

    initExtra = ''
      source ${pkgs.zsh-vi-mode}/share/zsh-vi-mode/zsh-vi-mode.plugin.zsh
    '';

    history = {
      ignoreDups = true;
    };

    shellAliases = {
      vim = "nvim";
      nv = "nvim";
      q = "exit";
      alt = "cd /mnt/alt/@home/leroy/";
      media = "cd /mnt/media/";
      music = "cd /mnt/media/music";
      dev = "nix develop -c zsh";
    };

    profileExtra = ''
      if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
        Hyprland
      fi
    '';
  };
}
