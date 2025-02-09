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
      '';
    };
    mpd-discord-rpc.enable = true;
  };

  home.packages = with pkgs; [
    spotify
    mpd
    mpd-mpris
    mpdscribble
    rmpc
    deadbeef
    nicotine-plus
    puddletag
  ];
}
