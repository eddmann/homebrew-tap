cask "marginalia" do
  arch arm: "arm64", intel: "amd64"

  version "0.0.2"
  sha256 arm:   "84ca6dda1eef15ad9a0be9afd18b0a448a7fef6e47c4a663c7b172572bf0a601",
         intel: "392ec03e2e816d701342fc87b6017bc86f54143ea979e3bea55a26295e20790e"

  url "https://github.com/eddmann/Marginalia/releases/download/v#{version}/marginalia-#{version}-macos-#{arch}.dmg"
  name "Marginalia"
  desc "A desktop ebook reader with a built-in AI companion"
  homepage "https://github.com/eddmann/Marginalia"

  depends_on macos: :monterey

  app "Marginalia.app"
  binary "#{appdir}/Marginalia.app/Contents/MacOS/marginalia"

  zap trash: [
    "~/Library/Preferences/com.eddmann.marginalia.plist",
    "~/Library/Application Support/com.eddmann.marginalia",
    "~/Library/Caches/com.eddmann.marginalia"
  ]
end
