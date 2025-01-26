{
  programs.yazi = {
    enable = true;
    enableZshIntegration = true;
    shellWrapperName = "y";
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
