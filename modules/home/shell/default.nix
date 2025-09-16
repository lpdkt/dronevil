{
  imports = [
    ./fish.nix
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
      enableFishIntegration = true;
      enableZshIntegration = true;
      defaultOptions = [
        "--color=16"
        "--layout=reverse"
        "--height=10"
      ];
    };
  };
}
