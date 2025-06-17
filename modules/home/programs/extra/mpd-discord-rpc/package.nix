{
  lib,
  rustPlatform,
  fetchFromGitHub,
  pkg-config,
  openssl,
}:

rustPlatform.buildRustPackage rec {
  pname = "mpd-discord-rpc";
  version = "1.8.0";

  src = fetchFromGitHub {
    owner = "JakeStanger";
    repo = "mpd-discord-rpc";
    rev = "7f2fd9d66248b7e86e4a8c6e96132d21c1d5d7ac";
    hash = "sha256-hNoe/AVpdqc7isKyJZ1RFsyTXW6vehY3lhhBLprJsUM=";
  };

  useFetchCargoVendor = true;
  cargoHash = "sha256-Q7QyJh/KOJ5drud/tPKtEzfr3q7yosW8wUCOCA8uDSs=";

  nativeBuildInputs = [
    pkg-config
  ];

  buildInputs = [
    openssl
  ];

  meta = with lib; {
    description = "Rust application which displays your currently playing song / album / artist from MPD in Discord using Rich Presence";
    homepage = "https://github.com/JakeStanger/mpd-discord-rpc/";
    changelog = "https://github.com/JakeStanger/mpd-discord-rpc/blob/${src.rev}/CHANGELOG.md";
    license = licenses.mit;
    maintainers = with maintainers; [ kranzes ];
    mainProgram = "mpd-discord-rpc";
  };
}
