{
  programs.mpv = {
    enable = true;
    config = {
      volume = 65;
      ytdl-format = "bestvideo+bestaudio/best";
      ytdl-raw-options = "sub-lang=en,write-subs=";
      slang = "en";
      gpu-context="wayland";
    };
    bindings = {
      r = "cycle_values video-rotate 90 180 270 0";
    };
  };
}
