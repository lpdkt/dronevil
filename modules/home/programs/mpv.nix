{
  programs.mpv = {
    enable = true;
    config = {
      volume = 65;
    };
    bindings = {
      r = "cycle_values video-rotate 90 180 270 0";
    };
  };
}
