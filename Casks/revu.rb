cask "revu" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3"
  sha256 arm:   "312e590c5b79f40b188c38381a19725c8e20ad31d208125f7e70bb73aab02d6f",
         intel: "dc23b6951431bb26ccf25a4bf1f2e207d42de839c4feee80260b068a10794be1"

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
