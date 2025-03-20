{
  programs.imv = {
    enable = true;
    settings = {
      options = {
        overlay_font = "Iosevka Nerd Font:10";
      };
      binds = {
        y = "exec wl-copy < \"$imv_current_file\"";
      };
    };
  };
}
