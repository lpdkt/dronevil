{
  time.timeZone = "Europe/Berlin";

  i18n = {
    defaultLocale = "de_DE.UTF-8";
    extraLocaleSettings = {
      LC_MESSAGES = "en_US.UTF-8";
    };
    supportedLocales = [
      "de_DE.UTF-8/UTF-8"
      "en_US.UTF-8/UTF-8"
      "ja_JP.UTF-8/UTF-8"
    ];
  };

  location.provider = "geoclue2";
  services.geoclue2.enable = true;
}
