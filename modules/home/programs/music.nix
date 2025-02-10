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
  };

  home.packages = with pkgs; [
    spotify
    mpc
    mpdscribble
    rmpc
    deadbeef
    nicotine-plus
    puddletag
  ];
}
