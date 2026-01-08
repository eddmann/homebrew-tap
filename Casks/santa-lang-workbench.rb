cask "santa-lang-workbench" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.0"
  sha256 arm:   "PLACEHOLDER_ARM64_SHA256",
         intel: "PLACEHOLDER_AMD64_SHA256"

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
