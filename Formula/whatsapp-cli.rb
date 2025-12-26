class WhatsappCli < Formula
  desc "WhatsApp from your terminal"
  homepage "https://github.com/eddmann/whatsapp-cli"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/eddmann/whatsapp-cli/releases/download/v#{version}/whatsapp-macos-arm64"
      sha256 "75c65a81ed1aaaa4f01b7bde02054bc9cdce23e71b097f5f5a757a93e3de9415"
    end
    on_intel do
      url "https://github.com/eddmann/whatsapp-cli/releases/download/v#{version}/whatsapp-macos-x64"
      sha256 "5ed36ebc1b14eddc2667f6c728d897cdfca66662c45b1d8163a3c9d7360d7184"
    end
  end

  def install
    if Hardware::CPU.arm?
      bin.install "whatsapp-macos-arm64" => "whatsapp"
    else
      bin.install "whatsapp-macos-x64" => "whatsapp"
    end
  end

  test do
    system "#{bin}/whatsapp", "--version"
  end
end
