cask "santa-lang-workbench" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1"
  sha256 arm:   "97f5c1857bfe5ba8991882dd134d8dffe9c451aafbad245f7d44c0ae3e87bf4f",
         intel: "72b64d47e392bd27ba75048b2a5b7dcdf0b48076c686e0947c6e175224f13cd9"

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
