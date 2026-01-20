class Phpx < Formula
  desc "Run PHP scripts with inline dependencies"
  homepage "https://github.com/eddmann/phpx"
  version "0.0.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/eddmann/phpx/releases/download/v#{version}/phpx-macos-arm64"
      sha256 "efe479bef08ee3453758c65840ac5e8c4eaf310882bdc981fe80f2bf1bb492d7"
    end
    on_intel do
      url "https://github.com/eddmann/phpx/releases/download/v#{version}/phpx-macos-x64"
      sha256 "71484a85b6c376d9d3d81f78a26bb80f44f39a82f4ebbee24c7a8561721f15b4"
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
