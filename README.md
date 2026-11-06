# tietjen/homebrew-tap

Homebrew tap for [launchkeeper](https://github.com/tietjen/launchkeeper) — Autoruns for macOS.

```
brew install tietjen/tap/launchkeeper
```

The formula installs the prebuilt universal binary from the GitHub release
(Developer ID signed, notarized by Apple), pinned by its SHA-256.

## The app

```
brew install --cask tietjen/tap/launchkeeper-app
```

LaunchKeeper.app — the same core with a window: inventory, actions with Touch ID
through a privileged helper, a watch with notifications. Notarized DMG from the
[app's releases](https://github.com/tietjen/launchkeeper-app/releases); after
installation the app updates itself (Sparkle, EdDSA-signed).

## MailKeeper

```
brew install --cask tietjen/tap/mailkeeper
```

[MailKeeper.app](https://github.com/tietjen/mailkeeper) — a mail archive for macOS
with search, clean-up and local AI. Notarized DMG from the
[app's releases](https://github.com/tietjen/mailkeeper/releases); after
installation the app updates itself (Sparkle, EdDSA-signed). Uninstalling keeps
the archive: it holds your mail. Free for private and other noncommercial use
([PolyForm Noncommercial 1.0.0](https://github.com/tietjen/mailkeeper/blob/main/TERMS.md)).
