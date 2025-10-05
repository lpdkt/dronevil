{
  services.mako = {
    enable = true;
    settings = {
      width = 300;
      height = 200;
      layer = "overlay";
      sort = "-time";
      background-color = "#1a1b26";
      text-color = "#c0caf5";
      text-alignment = "center";
      ignore-timeout = 0;
      default-timeout = 5000;
      icons = 1;
      icon-location = "right";
      border-color = "#7aa2f7AA";
      border-size = 2;
      border-radius = 0;
      padding = 10;
      margin = 10;
      font = "Iosevka Nerd Font 10";
      max-icon-size = 64;

      "urgency=low" = {
        border-color = "#5471B2";
      };

      "urgency=normal" = {
        border-color = "#5471B2";
      };

      "urgency=critical" = {
        text-color = "#db4b4b";
        border-color = "#db4b4b";
      };
    };
  };
}
