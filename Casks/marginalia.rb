cask "marginalia" do
  arch arm: "arm64", intel: "amd64"

  version "0.0.1"
  sha256 arm:   "TODO",
         intel: "TODO"

  url "https://github.com/eddmann/Marginalia/releases/download/v#{version}/marginalia-#{version}-macos-#{arch}.dmg"
  name "Marginalia"
  desc "A desktop ebook reader with a built-in AI companion"
  homepage "https://github.com/eddmann/Marginalia"

  depends_on macos: ">= :monterey"

  app "Marginalia.app"
  binary "#{appdir}/Marginalia.app/Contents/MacOS/marginalia"

  zap trash: [
    "~/Library/Preferences/com.eddmann.marginalia.plist",
    "~/Library/Application Support/com.eddmann.marginalia",
    "~/Library/Caches/com.eddmann.marginalia"
  ]
end
