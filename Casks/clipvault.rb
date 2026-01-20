cask "clipvault" do
  version "1.1.1"
  sha256 "96b73be547b245b1c34e7f011b390a59ba9e20263d32e5d33ec4171fad0438b2"

  url "https://github.com/eddmann/ClipVault/releases/download/v#{version}/ClipVault-#{version}.zip"
  name "ClipVault"
  desc "Secure, privacy-focused clipboard manager with AES-256-GCM encryption"
  homepage "https://github.com/eddmann/ClipVault"

  depends_on macos: ">= :monterey"

  app "ClipVault.app"

  zap trash: [
    "~/Library/Preferences/com.eddmann.ClipVault.plist",
    "~/Library/Application Support/ClipVault",
    "~/Library/Containers/com.eddmann.ClipVault"
  ]
end
