{ pkgs, ... }:
{
  services = {
    pipewire = {
      enable = true;
      alsa.enable = true;
      alsa.support32Bit = true;
      pulse.enable = true;
      jack.enable = true;
      wireplumber.enable = true;
      extraConfig.pipewire = {
        "10-clock-rate" = {
          "context.properties" = {
            "default.clock.rate" = 48000;
            "default.clock.allowed-rates" = [ 44100 48000 88200 96000 192000 ];
          };
        };
      };
    };
    mullvad-vpn.enable = true;
    gvfs.enable = true;
    printing = {
      enable = true;
      drivers = [ pkgs.cnijfilter2 ];
    };
    avahi = {
      enable = true;
      nssmdns4 = true;
      openFirewall = true;
    };
  };
}
