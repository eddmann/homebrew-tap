class WhatsappCli < Formula
  desc "WhatsApp from your terminal"
  homepage "https://github.com/eddmann/whatsapp-cli"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/eddmann/whatsapp-cli/releases/download/v#{version}/whatsapp-macos-arm64"
      sha256 "bc1b2976761e5286cd2e443156efda19e24c67c48a2c9f37dba7cbb64e18ef53"
    end
    on_intel do
      url "https://github.com/eddmann/whatsapp-cli/releases/download/v#{version}/whatsapp-macos-x64"
      sha256 "bd3cff4fa294006989470de68a04dbed01c710034567a7b08dd236865f209db3"
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
