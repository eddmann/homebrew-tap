cask "claudemeter" do
  version "1.2.1"
  sha256 "d2c89717bfbdc892555a69ecdd93f66ad2498d07ddbbeacdd909cd6dc6c75134"

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
