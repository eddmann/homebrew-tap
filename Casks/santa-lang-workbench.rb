cask "santa-lang-workbench" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.0"
  sha256 arm:   "54a20c9016fa89b79431f619fa2472f69b260c9ec83c7523a54e363d2defa663",
         intel: "c36a8b5470c7e6dc522d43ebfe61bfc647fc084c25b7f955726e6fd57720f6e9"

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
