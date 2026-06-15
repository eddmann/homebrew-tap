cask "clipvault" do
  version "1.2.0"
  sha256 "21cf7714c049712592f8c0fe6543befaca09a6805dc15f71d6183eb0f1e4a418"

  url "https://github.com/eddmann/ClipVault/releases/download/v#{version}/ClipVault-#{version}.zip"
  name "ClipVault"
  desc "Secure, privacy-focused clipboard manager with AES-256-GCM encryption"
  homepage "https://github.com/eddmann/ClipVault"

  depends_on macos: :monterey

  app "ClipVault.app"

  zap trash: [
    "~/Library/Preferences/com.eddmann.ClipVault.plist",
    "~/Library/Application Support/ClipVault",
    "~/Library/Containers/com.eddmann.ClipVault"
  ]
end
