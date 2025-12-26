class TurboPng < Formula
  desc "High-performance PNG optimization and compression"
  homepage "https://github.com/eddmann/turbo-png"
  version "1.0.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/eddmann/turbo-png/releases/download/v#{version}/turbo-png-v#{version}-macos-aarch64.tar.gz"
      sha256 "80e000b2f28c06e66cfece5af23bdd2262487907ebdbec310b0972f13b827279"
    end
    on_intel do
      url "https://github.com/eddmann/turbo-png/releases/download/v#{version}/turbo-png-v#{version}-macos-x86_64.tar.gz"
      sha256 "ef0b017fa9a655f68233020f2473619c14acfe7f18226eeee64c957de5c3c54f"
    end
  end

  def install
    bin.install "turbo-png"
  end

  test do
    system "#{bin}/turbo-png", "--version"
  end
end
