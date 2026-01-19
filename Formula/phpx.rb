class Phpx < Formula
  desc "Run PHP scripts with inline dependencies"
  homepage "https://github.com/eddmann/phpx"
  version "0.0.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/eddmann/phpx/releases/download/v#{version}/phpx-macos-arm64"
      sha256 "d8619db2486b5a30c0787b8ae6d986888e6d2953a9ae991e110250be256cbd00"
    end
    on_intel do
      url "https://github.com/eddmann/phpx/releases/download/v#{version}/phpx-macos-x64"
      sha256 "d4a0ed82b0059ab1e461a479772953f3c54910d3bb782452520b51a6168ae0e5"
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
