cask "revu" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.0"
  sha256 arm:   "9b8334cc1eb0aea0b03a79cd2640f9007f386967b45fbd4d9241020955f05b68",
         intel: "5c7e3aad8b96b2271d1beddd92a8ee9d9a7a7b3402c81192e0389c58bf54b0a0"

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
