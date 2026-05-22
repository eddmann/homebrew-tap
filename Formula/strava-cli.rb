class StravaCli < Formula
  desc "Strava from your terminal"
  homepage "https://github.com/eddmann/strava-cli"
  version "1.0.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/eddmann/strava-cli/releases/download/v#{version}/strava-macos-arm64"
      sha256 "922f9bde6d5c39adb27c435bdbf87a6b8f08696efd69cbee8737e254df3421c7"
    end
    on_intel do
      url "https://github.com/eddmann/strava-cli/releases/download/v#{version}/strava-macos-x64"
      sha256 "34cf60707706f909526184e197ea61e09d38e0678dabace58556694f6da99e18"
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
