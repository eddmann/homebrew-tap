cask "revu" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2"
  sha256 arm:   "6364ce7a2a637e360920088b77bf02ca734e010be06793602ea8fd7adaaba961",
         intel: "9a5f5dfd314d9c517c4eed36a2789eb87a4d527b28ad4d428ea0e3ebdc3fcb4f"

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
