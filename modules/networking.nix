{
  networking = {
    networkmanager = {
      enable = true;
      wifi = {
        backend = "iwd";
      };
    };
    wireless.iwd.enable = true;
    wireless.iwd.settings = {
      Settings = {
        AutoConnect = true;
      };
    };
  };
}
