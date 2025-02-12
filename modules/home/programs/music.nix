{ pkgs, ... }:
{
  services = {
    mpd = {
      enable = true;
      musicDirectory = "/mnt/media/music";
      extraConfig = ''
        audio_output {
          type "pipewire"
          name "pipewire output"
        }
        auto_update "yes"
        restore_paused "yes"
      '';
    };
    mpd-mpris.enable = true;
    mpd-discord-rpc = {
      enable = true;
      settings = {
        format = {
          details = "$title";
          state = "$artist / $album";
          small_image = "";
        };
      };
    };
  };

  home.packages = with pkgs; [
    spotify
    mpc
    mpdscribble
    rmpc
    spotify-player
    deadbeef
    nicotine-plus
    puddletag
  ];
}
