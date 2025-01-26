{
  imports = [
    ./starship.nix
    ./zsh.nix
  ];

  programs.bash = {
    enable = true;
    enableCompletion = true;
  };
}
