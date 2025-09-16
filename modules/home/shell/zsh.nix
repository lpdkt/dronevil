{ pkgs, ... }:
{
  programs.zsh = {
    enable = true;
    syntaxHighlighting.enable = true;

    dotDir = "/home/leroy/.config/zsh";

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

    initContent = ''
      zstyle ':completion:*' list-colors "''${(s.:.)LS_COLORS}"
      source ${pkgs.zsh-vi-mode}/share/zsh-vi-mode/zsh-vi-mode.plugin.zsh
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
      conf = "cd ~/.config/dronevil";
    };
  };
}
