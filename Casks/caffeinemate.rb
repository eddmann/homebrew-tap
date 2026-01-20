cask "caffeinemate" do
  version "1.0.2"
  sha256 "b6618cf89edd936b78c85d6f869037bfb33474725f9da924d574cfa8b48d2d12"

  url "https://github.com/eddmann/CaffeineMate/releases/download/v#{version}/CaffeineMate-#{version}.zip"
  name "CaffeineMate"
  desc "Keep your Mac awake from the menu bar"
  homepage "https://github.com/eddmann/CaffeineMate"

  depends_on macos: ">= :big_sur"

  app "CaffeineMate.app"

  zap trash: [
    "~/Library/Preferences/com.eddmann.CaffeineMate.plist",
    "~/Library/Containers/com.eddmann.CaffeineMate"
  ]
end
