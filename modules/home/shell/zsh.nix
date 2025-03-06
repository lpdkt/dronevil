{ pkgs, ... }:
{
  programs.zsh = {
    enable = true;
    syntaxHighlighting.enable = true;

    dotDir = ".config/zsh";

    sessionVariables = {
      TERMINAL = "foot";
      EDITOR = "nvim";
      LS_COLORS = "$(${pkgs.vivid}/bin/vivid generate tokyonight-night)";
    };

    envExtra = ''
      path+=("$HOME/bin")
      path+=("$HOME/.local/share/go/bin")
      export PATH
    '';

    initExtra = ''
      zstyle ':completion:*' list-colors "''${(s.:.)LS_COLORS}"
    '';

    history = {
      size = 1000000;
      save = 1000000;
      ignorePatterns = [
        "cd ..*"
        "ls"
      ];
      extended = true;
      ignoreDups = true;
    };

    shellAliases = {
      vim = "nvim";
      v = "nvim";
      nv = "nvim";
      q = "exit";
      media = "cd /mnt/media/";
      music = "cd /mnt/media/music";
      dev = "nix develop -c zsh";
      rebuild = "sudo nixos-rebuild switch --flake .";
    };

    profileExtra = ''
      if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
        Hyprland
      fi
    '';
  };
}
