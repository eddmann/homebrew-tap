cask "claudemeter" do
  version "1.3.0"
  sha256 "174f2184df305fb1173072ef4a9b30d964a55bb043c3fbea947da06d79b4cb85"

  url "https://github.com/eddmann/ClaudeMeter/releases/download/v#{version}/ClaudeMeter-#{version}.zip"
  name "ClaudeMeter"
  desc "macOS menu bar app for monitoring Claude.ai plan usage"
  homepage "https://github.com/eddmann/ClaudeMeter"

  depends_on macos: ">= :sonoma"

  app "ClaudeMeter.app"

  zap trash: [
    "~/Library/Preferences/com.eddmann.ClaudeMeter.plist",
    "~/Library/Application Support/com.claudemeter",
    "~/Library/Containers/com.eddmann.ClaudeMeter",
    "~/.claudemeter"
  ]
end
