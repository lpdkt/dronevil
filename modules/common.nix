{ pkgs, ... }:
{
  nixpkgs.config.allowUnfree = true;

  security = {
    sudo = {
      execWheelOnly = true;
      extraConfig = ''
        Defaults lecture = never
        Defaults passwd_timeout=0
      '';
    };
    polkit.enable = true;
  };

  zramSwap.enable = true;

  console.keyMap = "us";

  nix = {
    settings.auto-optimise-store = true;
    gc = {
      automatic = true;
      dates = "weekly";
      options = "--delete-older-than 7d";
    };
    settings.experimental-features = [
      "nix-command"
      "flakes"
    ];
  };

  system.stateVersion = "24.11"; # Did you read the comment?

  environment = {
    shells = [ pkgs.bashInteractive ];
    systemPackages = with pkgs; [
      vim
      wget
      curl
      git
      usbutils
    ];
    variables = {
      EDITOR = "vim";
    };
  };
}
