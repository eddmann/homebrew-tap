class WhatsappCli < Formula
  desc "WhatsApp from your terminal"
  homepage "https://github.com/eddmann/whatsapp-cli"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/eddmann/whatsapp-cli/releases/download/v#{version}/whatsapp-macos-arm64"
      sha256 "dc7425206b25bfe2579d7ad8f9c88e55b7fc6c66734a83e41fa77d6d528235e9"
    end
    on_intel do
      url "https://github.com/eddmann/whatsapp-cli/releases/download/v#{version}/whatsapp-macos-x64"
      sha256 "6f8ba7cf81ce0b86456721efb4e845755a6a05e45ff2516f82bee12e4ac8077d"
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
