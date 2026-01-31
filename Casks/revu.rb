cask "revu" do
  arch arm: "arm64", intel: "amd64"

  version "0.2.0"
  sha256 arm:   "3608a55d2c0afa59a699b4e4091f995500f89f982082279228b3e1b77b9069c0",
         intel: "5111058cae31b0be708f15de490cae5b3b2c139b6fb5ff47f2dcac2313cb7d0f"

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
