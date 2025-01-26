{ pkgs, ... }:
{
  fonts = {
    fontconfig = {
      enable = true;
      defaultFonts = {
        emoji = [ "Twitter Color Emoji" ];
        monospace = [
          "Iosevka Nerd Font"
          "Sarasa Gothic"
        ];
        sansSerif = [
          "Noto Sans"
          "Sarasa Gothic"
        ];
      };
      subpixel.rgba = "rgb";
    };

    fontDir.enable = true;

    packages = with pkgs; [
      noto-fonts
      noto-fonts-extra
      noto-fonts-cjk-sans
      noto-fonts-emoji
      sarasa-gothic
      twitter-color-emoji
      nerd-fonts.iosevka
      nerd-fonts.iosevka-term
      nerd-fonts.jetbrains-mono
    ];
  };

}
