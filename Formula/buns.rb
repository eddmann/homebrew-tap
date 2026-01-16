class Buns < Formula
  desc "Run TypeScript scripts with inline dependencies"
  homepage "https://github.com/eddmann/buns"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/eddmann/buns/releases/download/v#{version}/buns-macos-arm64"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
    on_intel do
      url "https://github.com/eddmann/buns/releases/download/v#{version}/buns-macos-x64"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  def install
    if Hardware::CPU.arm?
      bin.install "buns-macos-arm64" => "buns"
    else
      bin.install "buns-macos-x64" => "buns"
    end
  end

  test do
    system "#{bin}/buns", "version"
  end
end
