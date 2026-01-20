class WhatsappCli < Formula
  desc "WhatsApp from your terminal"
  homepage "https://github.com/eddmann/whatsapp-cli"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/eddmann/whatsapp-cli/releases/download/v#{version}/whatsapp-macos-arm64"
      sha256 "a6fad9506cf1bf6e5549afb7025399be2d36d4ef110a091012bbeed9e18452f8"
    end
    on_intel do
      url "https://github.com/eddmann/whatsapp-cli/releases/download/v#{version}/whatsapp-macos-x64"
      sha256 "6741c1bc40c928b68f06fefd12b5e0a9080c13c1f5454eac0f4416e2079e0e04"
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
