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
  };

  home.packages = with pkgs; [
    spotify
    mpc
    mpdscribble
    ncmpcpp
    rmpc
    deadbeef
    nicotine-plus
    puddletag
    asunder
  ];
}
