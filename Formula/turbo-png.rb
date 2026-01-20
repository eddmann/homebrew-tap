class TurboPng < Formula
  desc "High-performance PNG optimization and compression"
  homepage "https://github.com/eddmann/turbo-png"
  version "1.0.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/eddmann/turbo-png/releases/download/v#{version}/turbo-png-v#{version}-macos-aarch64.tar.gz"
      sha256 "f1f458023166998eaea083fe937f8faae3512a6dbda9edc7f6321540f1d0593f"
    end
    on_intel do
      url "https://github.com/eddmann/turbo-png/releases/download/v#{version}/turbo-png-v#{version}-macos-x86_64.tar.gz"
      sha256 "cca4a34b74a54a9ad54916f8dd03da41e46546acc376ca19a805dff2afcf9660"
    end
  end

  def install
    bin.install "turbo-png"
  end

  test do
    system "#{bin}/turbo-png", "--version"
  end
end
