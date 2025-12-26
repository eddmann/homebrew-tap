cask "claudemeter" do
  version "1.0.7"
  sha256 "e736bed401948907fac89629839a1510800c7997d3d02539310240757449472b"

  url "https://github.com/eddmann/ClaudeMeter/releases/download/v#{version}/ClaudeMeter-#{version}.zip"
  name "ClaudeMeter"
  desc "macOS menu bar app for monitoring Claude.ai plan usage"
  homepage "https://github.com/eddmann/ClaudeMeter"

  depends_on macos: ">= :sonoma"

  app "ClaudeMeter.app"

  zap trash: [
    "~/Library/Preferences/com.eddmann.ClaudeMeter.plist",
    "~/.claudemeter"
  ]
end
