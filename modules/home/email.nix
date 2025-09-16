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
    extraPackages = with pkgs; [ pass gnome-keyring ];
  };
}
