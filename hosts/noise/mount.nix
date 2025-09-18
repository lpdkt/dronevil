{
  # Media drive
  fileSystems."/mnt/media" = {
    device = "/dev/disk/by-uuid/beeaa896-7524-437f-a1fb-686c795a8b5b";
    fsType = "ext4";
    options = [
      "defaults"
      "user"
      "x-gvfs-show"
      "rw"
    ];
  };
}
