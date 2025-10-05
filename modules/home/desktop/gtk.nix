{ pkgs, ... }:
{
  home.pointerCursor = {
    name = "Adwaita";
    package = pkgs.adwaita-icon-theme;
    size = 24;
    gtk.enable = true;
  };

  gtk =
    let
      # https://codeberg.org/river/wiki#how-do-i-disable-gtk-decorations-e-g-title-bar
      disableDecorations = {
        extraConfig = {
          gtk-dialogs-use-header = false;
        };
        extraCss = # css
          ''
            /* No (default) title bar on wayland */
            headerbar.default-decoration {
              margin-bottom: 50px;
              margin-top: -100px;
            }

            /* rm -rf window shadows */
            window.csd,             /* gtk4? */
            window.csd decoration { /* gtk3 */
              box-shadow: none;
            }
          '';
      };
    in
    {
      enable = true;
      theme = {
        name = "Tokyonight-Dark";
        package = pkgs.tokyonight-gtk-theme;
      };
      iconTheme = {
        name = "Papirus-Dark";
        package = pkgs.papirus-icon-theme;
      };
      font = {
        name = "Iosevka Nerd Font";
        size = 10;
      };
      gtk3 = disableDecorations;
      gtk4 = disableDecorations;
    };

  qt = {
    enable = true;
    platformTheme.name = "gtk3";
    style.name = "adwaita-dark";
    style.package = pkgs.adwaita-qt;
  };

  dconf = {
    enable = true;
    settings = {
      "org/gnome/desktop/interface".color-scheme = "prefer-dark";
      "org/gnome/desktop/wm/preferences"."button-layout" = "";
    };
  };
}
