cask "revu" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1"
  sha256 arm:   "c138a74d4af7830c6e4d7b44036b8810508ee30dfd42282580ae3ac3d89060b8",
         intel: "abfbd21c6a9dfe2d527350aa4f5bbda80f57e6d5c2a3627b37f063961fc49212"

  url "https://github.com/eddmann/revu/releases/download/v#{version}/revu-#{version}-macos-#{arch}.dmg"
  name "revu"
  desc "Desktop Git diff reviewer for AI coding agents"
  homepage "https://github.com/eddmann/revu"

  depends_on macos: ">= :monterey"

  app "revu.app"

  zap trash: [
    "~/Library/Preferences/com.revu.app.plist",
    "~/Library/Application Support/com.revu.app",
    "~/Library/Caches/com.revu.app"
  ]
end
