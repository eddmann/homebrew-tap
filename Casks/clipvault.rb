cask "clipvault" do
  version "1.0.2"
  sha256 "f7695b971ec0f2d5c17c46efc9b2208afeaaa4a54b9e6617cadb780a7f843144"

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
