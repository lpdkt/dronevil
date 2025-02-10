{ pkgs, ... }:
{
  programs.firefox = {
    enable = true;
     policies = {
      DownloadDirectory = "\${home}/downloads";
      OfferToSaveLogins = false;
      PromptForDownloadLocation = true;
    };
  };

  home.packages = with pkgs; [
    chromium
  ];
}
