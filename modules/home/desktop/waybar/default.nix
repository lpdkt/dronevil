{
  programs.waybar = {
    enable = true;
    systemd.enable = true;
  };

  xdg.configFile = {
    "waybar/config".source = ./config.jsonc;
    "waybar/style.css".source = ./style.css;
  };
}
