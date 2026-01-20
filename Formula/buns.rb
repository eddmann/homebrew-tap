class Buns < Formula
  desc "Run TypeScript scripts with inline dependencies"
  homepage "https://github.com/eddmann/buns"
  version "0.0.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/eddmann/buns/releases/download/v#{version}/buns-macos-arm64"
      sha256 "88a27f476f287250f7c369682587e448408a0e0944ec4bb1cb02bf09d6a34d93"
    end
    on_intel do
      url "https://github.com/eddmann/buns/releases/download/v#{version}/buns-macos-x64"
      sha256 "3ccf33e59d65caf44633c8ceef323f08cef9bbbf8bd56042ca9175171c616b66"
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
