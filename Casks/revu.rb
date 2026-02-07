cask "revu" do
  arch arm: "arm64", intel: "amd64"

  version "0.4.0"
  sha256 arm:   "2d6792c23d73e7fc1f7d78e6dbd7cde201ef0610d246f5acbcdb2eda52b37d41",
         intel: "59efa6f0a471d1ee19b2970cef0386c3bc88f2eb85cb05073c4385422115aa7c"

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
