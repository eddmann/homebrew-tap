cask "revu" do
  arch arm: "arm64", intel: "amd64"

  version "0.3.1"
  sha256 arm:   "dd4980a152743eb0e1af97870d39c4288c6788586fb283554cb78ac79644f51f",
         intel: "01513880f0c618708049133e6998f33d71ec8b5e5ed4fae5db18386119cc1680"

  url "https://github.com/eddmann/revu/releases/download/v#{version}/revu-#{version}-macos-#{arch}.dmg"
  name "revu"
  desc "Desktop Git diff reviewer for AI coding agents"
  homepage "https://github.com/eddmann/revu"

  depends_on macos: ">= :monterey"

  app "revu.app"
  binary "#{appdir}/revu.app/Contents/MacOS/revu"

  zap trash: [
    "~/Library/Preferences/com.revu.app.plist",
    "~/Library/Application Support/com.revu.app",
    "~/Library/Caches/com.revu.app"
  ]
end
