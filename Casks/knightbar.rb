cask "knightbar" do
  version "0.2.0"
  sha256 "38792a021d07ca4d59725b8b39f7eec4006fe7f8a9afc1f5072e9c5c5dca9aab"

  url "https://github.com/jonasgrau/knightbar/releases/download/v#{version}/Knightbar-#{version}.zip"
  name "Knightbar"
  desc "Chess in the menu bar"
  homepage "https://github.com/jonasgrau/knightbar"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Knightbar.app"

  zap trash: [
    "~/Library/Application Support/io.github.jonasgrau.Knightbar",
    "~/Library/Caches/io.github.jonasgrau.Knightbar",
    "~/Library/Preferences/io.github.jonasgrau.Knightbar.plist",
  ]

  caveats <<~EOS
    Knightbar is not notarized by Apple yet, so macOS blocks its first launch.
    Open it once, close the warning, then click "Open Anyway" under
      System Settings → Privacy & Security
  EOS
end
