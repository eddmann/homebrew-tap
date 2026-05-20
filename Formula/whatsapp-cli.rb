class WhatsappCli < Formula
  desc "WhatsApp from your terminal"
  homepage "https://github.com/eddmann/whatsapp-cli"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/eddmann/whatsapp-cli/releases/download/v#{version}/whatsapp-macos-arm64"
      sha256 "d7959ed932d1f727c1ad4509510e0e1ec4d4615a8ea5b1885137d5d969817f62"
    end
    on_intel do
      url "https://github.com/eddmann/whatsapp-cli/releases/download/v#{version}/whatsapp-macos-x64"
      sha256 "00aad2876a75b338e381ea16c16092075bd91afc860e41eb3c81c9e8be88b5be"
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
