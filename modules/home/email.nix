{ pkgs, ... }:
{
  programs = {
    thunderbird = {
      enable = true;
      profiles."default".isDefault = true;
      settings = {
        "mail.biff.show_tray_icon_always" = true;
      };
    };
  };

  home.packages = with pkgs; [ aerc ];

  accounts.email.accounts = {
    "mail@lpdkt.xyz" = {
      realName = "lpdkt";
      address = "mail@lpdkt.xyz";
      userName = "mail@lpdkt.xyz";
      thunderbird.enable = true;
      aerc.enable = true;
      primary = true;
      imap = {
        host = "imap.migadu.com";
        port = 993;
      };
      smtp = {
        host = "smtp.migadu.com";
        port = 465;
      };
    };

    "leroy@traebert.de" = {
      realName = "Leroy Traebert";
      address = "leroy@traebert.de";
      userName = "leroy@traebert.de";
      thunderbird.enable = true;
      aerc.enable = true;
      imap = {
        host = "imap.strato.de";
        port = 993;
      };
      smtp = {
        host = "smtp.strato.de";
        port = 465;
      };
    };
  };
}
