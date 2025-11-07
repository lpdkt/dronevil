{ pkgs, ... }:
{
  fonts = {
    fontconfig = {
      enable = true;
      defaultFonts = {
        emoji = [ "Noto Color Emoji" ];
        monospace = [
          "Iosevka Nerd Font"
          "Sarasa Gothic"
        ];
        sansSerif = [
          "Noto Sans"
          "Sarasa Gothic"
        ];
      };
    };

    fontDir.enable = true;

    packages = with pkgs; [
      noto-fonts
      noto-fonts-cjk-sans
      noto-fonts-color-emoji
      nerd-fonts.iosevka
      nerd-fonts.iosevka-term
      sarasa-gothic
    ];
  };
}
