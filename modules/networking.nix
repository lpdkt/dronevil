{
  networking = {
    networkmanager = {
      enable = true;
      wifi = {
        backend = "iwd";
      };
    };
    wireless.iwd = {
      enable = true;
      settings = {
        Settings = {
          AutoConnect = true;
        };
      };
    };
  };
}
