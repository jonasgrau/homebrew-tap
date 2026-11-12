# Homebrew tap of jonasgrau

Casks for apps by [jonasgrau](https://github.com/jonasgrau).

## Knightbar

[Knightbar](https://github.com/jonasgrau/knightbar) puts a chess board in your Mac's menu bar.

```sh
brew tap jonasgrau/tap
brew trust --cask jonasgrau/tap/knightbar   # Homebrew only loads casks from other taps once you trust them
brew install --cask knightbar
```

Knightbar is not notarized by Apple yet. On the first launch, macOS blocks it: close the
warning, then click **Open Anyway** under **System Settings → Privacy & Security**.

Update with `brew upgrade --cask knightbar`, remove with `brew uninstall --cask knightbar`
(add `--zap` to also delete its settings and saved games).
