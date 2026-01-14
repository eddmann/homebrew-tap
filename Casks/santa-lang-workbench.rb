cask "santa-lang-workbench" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2"
  sha256 arm:   "740c365a5a430f04d4bb4fb99ab7bf550f7f91909a49724266f15f54cba6af99",
         intel: "3e1bebb421adfd8c13c8ad0ba8c52278d1016b498f6ba8210d61ad595d7fc293"

  url "https://github.com/eddmann/santa-lang-workbench/releases/download/#{version}/santa-lang-workbench-#{version}-macos-#{arch}.dmg"
  name "santa-lang Workbench"
  desc "Desktop IDE for santa-lang, a functional language for Advent of Code"
  homepage "https://github.com/eddmann/santa-lang-workbench"

  depends_on macos: ">= :monterey"

  app "santa-lang Workbench.app"

  zap trash: [
    "~/Library/Preferences/com.eddmann.santa-lang-workbench.plist",
    "~/Library/Application Support/com.eddmann.santa-lang-workbench",
    "~/Library/Caches/com.eddmann.santa-lang-workbench"
  ]
end
