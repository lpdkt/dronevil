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

  system.stateVersion = "24.11";

  environment = {
    shells = [ pkgs.bashInteractive ];
    systemPackages = with pkgs; [
      vim
      wget
      curl
      git
      usbutils
      cryptsetup
    ];
    variables = {
      EDITOR = "vim";
    };
  };
}
