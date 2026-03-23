cask "marginalia" do
  arch arm: "arm64", intel: "amd64"

  version "0.0.1"
  sha256 arm:   "18a541b906e1bbb1c680f99206d3f2564f5f47ce4cec4d44d9fceb39596ed7b8",
         intel: "b0665260b8f42f87e8ae9faf32818aaf496fb034a3f2032aae48ac1f3db35c24"

  url "https://github.com/eddmann/Marginalia/releases/download/v#{version}/marginalia-#{version}-macos-#{arch}.dmg"
  name "Marginalia"
  desc "A desktop ebook reader with a built-in AI companion"
  homepage "https://github.com/eddmann/Marginalia"

  depends_on macos: ">= :monterey"

  app "Marginalia.app"
  binary "#{appdir}/Marginalia.app/Contents/MacOS/marginalia"

  zap trash: [
    "~/Library/Preferences/com.eddmann.marginalia.plist",
    "~/Library/Application Support/com.eddmann.marginalia",
    "~/Library/Caches/com.eddmann.marginalia"
  ]
end
