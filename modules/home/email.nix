{ pkgs, ... }:
{
  programs = {
    thunderbird = {
      enable = true;
      profiles."default".isDefault = true;
    };
  };

  services.protonmail-bridge = {
    enable = true;
  };

  home.packages = with pkgs; [ pass gnome-keyring ];
}
