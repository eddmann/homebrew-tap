class Phpx < Formula
  desc "Run PHP scripts with inline dependencies"
  homepage "https://github.com/eddmann/phpx"
  version "0.0.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/eddmann/phpx/releases/download/v#{version}/phpx-macos-arm64"
      sha256 "2e4fd817159b97559340286570e64af0dc64697c03a1b494208f409a1813b340"
    end
    on_intel do
      url "https://github.com/eddmann/phpx/releases/download/v#{version}/phpx-macos-x64"
      sha256 "50f9812e90f41579c7472f67802711a539fbeb3853d2dd62f02e507e7f21ed02"
    end
  end

  def install
    if Hardware::CPU.arm?
      bin.install "phpx-macos-arm64" => "phpx"
    else
      bin.install "phpx-macos-x64" => "phpx"
    end
  end

  test do
    system "#{bin}/phpx", "version"
  end
end
