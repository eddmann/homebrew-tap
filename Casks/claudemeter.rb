cask "claudemeter" do
  version "1.3.1"
  sha256 "c64d30755c5272289355a9e4e91344bba0a39b4e2e919863e590bb62c6e7880b"

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
