cask "launchkeeper-app" do
  version "0.3.0"
  sha256 "d44c1fcffc0e5709ed1f021478e1dc1e5bbfb0ce3e201623b26b01ab88f1ba11"

  url "https://github.com/tietjen/launchkeeper-app/releases/download/v#{version}/LaunchKeeper-#{version}.dmg"
  name "LaunchKeeper"
  desc "See, control and clean up everything that starts automatically"
  homepage "https://github.com/tietjen/launchkeeper-app"

  livecheck do
    url :url
    strategy :github_latest
  end

  # Sparkle updates the app in place.
  auto_updates true
  depends_on macos: :sonoma

  app "LaunchKeeper.app"

  # The privileged helper is an SMAppService daemon inside the bundle.
  uninstall launchctl: "de.paranoidsecurity.LaunchKeeper.Helper",
            quit:      "de.paranoidsecurity.LaunchKeeper"

  # Not zapped: ~/Library/Application Support/launchkeeper (quarantine, backups)
  # and ~/Library/Logs/launchkeeper (audit, watch log) — shared with the CLI
  # and the only way back for anything LaunchKeeper moved away.
  zap trash: [
    "~/Library/Caches/de.paranoidsecurity.LaunchKeeper",
    "~/Library/HTTPStorages/de.paranoidsecurity.LaunchKeeper",
    "~/Library/Preferences/de.paranoidsecurity.LaunchKeeper.plist",
  ]
end
