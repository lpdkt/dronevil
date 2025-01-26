{
  services = {
    pipewire = {
      enable = true;
      alsa.enable = true;
      alsa.support32Bit = true;
      pulse.enable = true;
      wireplumber.enable = true;
    };
    mullvad-vpn.enable = true;
    gvfs.enable = true;
    getty = {
      autologinUser = "leroy";
      helpLine = "";
    };
  };
}
