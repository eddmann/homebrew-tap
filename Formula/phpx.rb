class Phpx < Formula
  desc "Run PHP scripts with inline dependencies"
  homepage "https://github.com/eddmann/phpx"
  version "0.0.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/eddmann/phpx/releases/download/v#{version}/phpx-macos-arm64"
      sha256 "19a0fa90ff7908e60662caf9e9ab84a733251795f01d17ebe96449bbb6dc4add"
    end
    on_intel do
      url "https://github.com/eddmann/phpx/releases/download/v#{version}/phpx-macos-x64"
      sha256 "ce88581cc40f15c5b3ba793706efe6b54770d5f770f5bd107243773e5d120da6"
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
