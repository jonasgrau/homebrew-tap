cask "knightbar" do
  version "0.3.1"
  sha256 "0a8f60fa15b32a3f2f72badfa71d9ff7a7613e51150fb6cdffdfb75265884982"

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
