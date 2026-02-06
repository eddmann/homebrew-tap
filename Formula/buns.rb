class Buns < Formula
  desc "Run TypeScript scripts with inline dependencies"
  homepage "https://github.com/eddmann/buns"
  version "0.0.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/eddmann/buns/releases/download/v#{version}/buns-macos-arm64"
      sha256 "45e43211b687fabb6920ad82af6ab515197cba33ae261e8f5806e7dde579bda3"
    end
    on_intel do
      url "https://github.com/eddmann/buns/releases/download/v#{version}/buns-macos-x64"
      sha256 "cf2d288ae01d674e0b2bd8f80eaa573540888c8e7e2c06a04987388dd4742ec4"
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
