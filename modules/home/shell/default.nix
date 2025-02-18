{
  imports = [
    ./starship.nix
    ./tmux.nix
    ./zsh.nix
  ];

  programs = {
    bash = {
      enable = true;
      enableCompletion = true;
    };
    fzf = {
      enable = true;
      enableZshIntegration = true;
      defaultOptions = [
        "--layout reverse"
        "--height 20%"
      ];
    };
  };
}
