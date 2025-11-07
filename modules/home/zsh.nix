{ pkgs, config, ... }:
{
  programs.zsh = {
    enable = true;
    syntaxHighlighting.enable = true;

    dotDir = "${config.xdg.configHome}/zsh";

    sessionVariables = {
      TERMINAL = "foot";
      EDITOR = "nvim";
      LS_COLORS = "$(${pkgs.vivid}/bin/vivid generate tokyonight-night)";
    };

    plugins = [
      {
        name = "zsh-vi-mode";
        src = "${pkgs.zsh-vi-mode}/share/zsh-vi-mode";
      }
    ];

    envExtra = ''
      path+=("$HOME/bin")
      path+=("$HOME/.local/share/go/bin")
      export PATH
    '';

    initContent = ''
      zstyle ':completion:*' list-colors "''${(s.:.)LS_COLORS}"
      zvm_after_init_commands+=(eval "$(fzf --zsh)")
    '';

    history.ignoreDups = true;

    shellAliases =
      let
        hostName = builtins.getEnv "HOSTNAME";
      in
      {
        vim = "nvim";
        media = "cd /mnt/media/";
        music = "cd /mnt/media/music";
        conf = "cd ~/dronevil";
        ".." = "cd ..";
        "..." = "cd ../..";
        "...." = "cd ../../..";
        dev = "nix develop --impure -c \"$SHELL\"";
        rebuild = "sudo nixos-rebuild switch --flake ~/dronevil#${hostName}";
      };

    profileExtra = ''
      if [ -z "$WAYLAND_DISPLAY" ] && [ $(tty) = "/dev/tty1" ]; then
        exec river
      fi
    '';
  };
}
