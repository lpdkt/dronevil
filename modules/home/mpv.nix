{
  programs.mpv = {
    enable = true;

    config = {
      volume = 65;
      ytdl-format = "bestvideo+bestaudio/best";
      ytdl-raw-options = "sub-lang=en,write-subs=,embed-subs=,cookies-from-browser=firefox:$\{HOME}\/.librewolf/";
      slang = "en,eng";
      gpu-context = "wayland";
    };

    bindings = {
      r = "cycle_values video-rotate 90 180 270 0";
    };
  };
}
