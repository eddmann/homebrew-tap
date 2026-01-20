class StravaCli < Formula
  desc "Strava from your terminal"
  homepage "https://github.com/eddmann/strava-cli"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/eddmann/strava-cli/releases/download/v#{version}/strava-macos-arm64"
      sha256 "d3b27f9d194141cb2ad3549b91ed8a3edbb219ed0a0c50cc0fb77ed543c51f56"
    end
    on_intel do
      url "https://github.com/eddmann/strava-cli/releases/download/v#{version}/strava-macos-x64"
      sha256 "1f6b55f1e32a2a8534b06dc84686ae9d96ee8cf902fc2c3ba651ded25b6fc14b"
    end
  end

  def install
    if Hardware::CPU.arm?
      bin.install "strava-macos-arm64" => "strava"
    else
      bin.install "strava-macos-x64" => "strava"
    end
  end

  test do
    system "#{bin}/strava", "--version"
  end
end
