{ pkgs, ... }:
{
  programs = {
    thunderbird = {
      enable = true;
      profiles."default".isDefault = true;
      settings = {
        "mail.biff.show_tray_icon_always" = true;
      };
    };
  };

  services.protonmail-bridge = {
    enable = true;
  };

  home.packages = with pkgs; [
    pass
    gnome-keyring
  ];
}
