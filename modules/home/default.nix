{
  imports = [
    ./desktop
    ./programs
    ./shell
  ];

  home = {
    sessionVariables = {
      EDITOR = "nvim";
      SHELL = "zsh";
    };
    stateVersion = "24.11";
  };

  nix.gc = {
    automatic = true;
    frequency = "weekly";
    options = "--delete-older-than 14d";
  };

  programs.home-manager.enable = true;
}
