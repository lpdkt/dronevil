{ pkgs, ... }:
{
  programs.thunderbird = {
    enable = true;
    profiles."default".isDefault = true;
  };

  systemd.user.services = {
    protonmail-bridge = {
      Unit = {
        Description = "Proton Mail Bridge";
        After = [
          "network.target"
          "gnome-keyring.service"
        ];
      };
      Service = {
        Type = "simple";
        ExecStart = "${pkgs.protonmail-bridge}/bin/protonmail-bridge --noninteractive";
        Restart = "on-failure";
        RestartSec = 5;
        Environment = "PATH=${pkgs.gnome-keyring}/bin:$PATH";
      };
      Install = {
        WantedBy = [ "default.target" ];
      };
    };
  };

  home.packages = with pkgs; [
    protonmail-bridge
    gnome-keyring
  ];
}
