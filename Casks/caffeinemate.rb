cask "caffeinemate" do
  version "1.0.1"
  sha256 "dc48d9bfe72410f3915081f4e6207401dc401cd8ecade53a4ff3cc95acc2e054"

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
