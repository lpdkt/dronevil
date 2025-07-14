{
  xdg = {
    enable = true;

    userDirs = {
      enable = true;
      desktop = "$HOME";
      templates = "$HOME";
      publicShare = "$HOME";
      documents = "$HOME/documents";
      download = "$HOME/downloads";
      music = "$HOME/music";
      pictures = "$HOME/pictures";
      videos = "$HOME/videos";
    };

    mimeApps =
      let
        associations =
          let
            file-manager = "thunar.desktop";
            editor = "nvim.desktop";
            browser = "firefox.desktop";
            video-player = "mpv.desktop";
            image-viewer = "imv-dir.desktop";
            music-player = "deadbeef.desktop";
          in
          {
            "application/pdf" = [ "org.pwmt.zathura-pdf-mupdf.desktop" ];
            "image/gif" = [ image-viewer ];
            "image/jpeg" = [ image-viewer ];
            "image/png" = [ image-viewer ];
            "image/webp" = [ image-viewer ];
            "inode/directory" = [ file-manager ];
            "text/csv" = [ editor ];
            "text/html" = [ browser ];
            "text/plain" = [ editor ];
            "video/mp4" = [ video-player ];
            "video/webm" = [ video-player ];
            "video/x-matroska" = [ video-player ];
            "audio/mpeg" = [ music-player ];
            "audio/flac" = [ music-player ];
            "audio/ogg" = [ music-player ];
            "audio/wav" = [ music-player ];
            "application/epub+zip" = [ "koreader.desktop" ];
            "x-scheme-handler/http" = [ browser ];
            "x-scheme-handler/https" = [ browser ];
            "x-scheme-handler/chrome" = [ browser ];
            "application/x-extension-htm" = [ browser ];
            "application/x-extension-html" = [ browser ];
            "application/x-extension-shtml" = [ browser ];
            "application/xhtml+xml" = [ browser ];
            "application/x-extension-xhtml" = [ browser ];
            "application/x-extension-xht" = [ browser ];
            "x-scheme-handler/magnet" = [ "qbittorrent.desktop" ];
            "application/vnd.oasis.opendocument.text" = [ "libreoffice-writer.desktop" ];
            "application/vnd.openxmlformats-officedocument.wordprocessingml.document" = [
              "libreoffice-writer.desktop"
            ];
          };
      in
      {
        enable = true;
        defaultApplications = associations;
        associations.added = associations;
      };
  };
}
