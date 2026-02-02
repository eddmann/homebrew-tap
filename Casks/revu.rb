cask "revu" do
  arch arm: "arm64", intel: "amd64"

  version "0.3.0"
  sha256 arm:   "c2f928c451c5adf3603e3b5c6c9257308fd09c3dbb831985612c26df9c1eacfa",
         intel: "0fb435d5b76eb46d230953f055dc56405b5fc8e68ed39b56aadbb9f956b5c19f"

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
