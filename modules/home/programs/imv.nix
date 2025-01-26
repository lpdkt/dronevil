{
  programs.imv = {
    enable = true;
    settings = {
      options = {
        overlay_font = "Iosevka Nerd Font:12";
      };
      binds = {
        y = "exec wl-copy < \"$imv_current_file\"";
      };
    };
  };
}
