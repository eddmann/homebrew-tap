class Phpx < Formula
  desc "Run PHP scripts with inline dependencies"
  homepage "https://github.com/eddmann/phpx"
  version "0.0.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/eddmann/phpx/releases/download/v#{version}/phpx-macos-arm64"
      sha256 "f438b7e7fc9cd45522b10190dd77f74602e7d0c930c06db1fd8866a17f29033b"
    end
    on_intel do
      url "https://github.com/eddmann/phpx/releases/download/v#{version}/phpx-macos-x64"
      sha256 "570c41b264b7a8728f3e242927332e4538b7092e9972a0c8bd74630946d1c62f"
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
