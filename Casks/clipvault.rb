cask "clipvault" do
  version "1.1.0"
  sha256 "2ecbfb8357b88de979aa2e8734be4837f3a37f7cf85a64816c48ab03d741b548"

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
