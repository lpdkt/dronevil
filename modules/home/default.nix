{
  imports = [
    ./desktop
    ./programs
    ./shell
  ];

  home = {
    sessionVariables = {
      TERMINAL = "foot";
      EDITOR = "nvim";
      SHELL = "zsh";
    };
    stateVersion = "24.11";
  };

  nix.gc = {
    automatic = true;
    frequency = "weekly";
    options = "--delete-older-than 7d";
  };

  programs.home-manager.enable = true;
}
