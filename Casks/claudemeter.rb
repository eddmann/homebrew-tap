cask "claudemeter" do
  version "1.3.2"
  sha256 "f1bd7d546c40e66fdaa7a3bd8458407dcc545d2911f1cffbd94684930882c5b2"

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
