{ pkgs, ... }:
{
  programs = {
    librewolf = {
      enable = true;
      policies = {
        DownloadDirectory = "\${home}/downloads";
        OfferToSaveLogins = false;
        PromptForDownloadLocation = true;
        DisableTelemetry = true;
        DisplayBookmarksToolbar = "never";
      };
    };
  };

  home.packages = with pkgs; [
    brave
    tor-browser
  ];
}
