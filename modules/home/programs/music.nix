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
    mpdscribble = {
      enable = true;
      endpoints = {
        "last.fm" = {
          url = "http://post.audioscrobbler.com/";
          username = "lpdkt";
          passwordFile = "/home/leroy/.config/mpdscribble/lastfmpass";
        };
      };
    };
  };

  home.packages = with pkgs; [
    spotify
    mpc
    rmpc
    deadbeef
    nicotine-plus
    picard
    puddletag
    asunder
    streamrip
    easyeffects
    flac
    id3
  ];
}
