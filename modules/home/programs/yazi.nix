{
  programs.yazi = {
    enable = true;
    enableZshIntegration = true;
    shellWrapperName = "y";
    theme = {
      mode = {
        normal_main = {
          bg = "#1a1b26";
          fg = "#c0caf5";
        };
        normal_alt = {
          bg = "#1a1b26";
          fg = "#c0caf5";
        };
      };
    };
    settings = {
      manager = {
        sort_dir_first = true;
        sort_by = "natural";
        sort_reverse = false;
        linemode = "none";
      };
      opener = {
        open = [
          {
            run = "xdg-open \"$@\"";
            orphan = true;
            desc = "Open";
          }
        ];
      };
    };
  };
}
