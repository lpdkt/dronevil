{
  programs.fuzzel = {
    enable = true;
    settings = {
      main = {
        font = "Iosevka Nerd Font:size=12";
        icon-theme = "Papirus";
        width = 60;
        lines = 8;
        line-height = 30;
        horizontal-pad = 20;
        terminal = "foot -e";
        dpi-aware = "no";
      };
      colors = {
        background = "16161eff";
        text = "c0caf5ff";
        match = "2ac3deff";
        selection = "343a55ff";
        selection-match = "2ac3deff";
        selection-text = "c0caf5ff";
        border = "7aa2f7aa";
      };
      border = {
        width = 2;
      };
    };
  };
}
