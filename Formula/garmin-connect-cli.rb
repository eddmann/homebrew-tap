class GarminConnectCli < Formula
  desc "Garmin Connect from your terminal"
  homepage "https://github.com/eddmann/garmin-connect-cli"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/eddmann/garmin-connect-cli/releases/download/v#{version}/garmin-connect-macos-arm64"
      sha256 "e4b6d5520d99a1d6a25a1a8136241f2f7b4df0a3d1f5cdaad78db17d4cfae2b3"
    end
    on_intel do
      url "https://github.com/eddmann/garmin-connect-cli/releases/download/v#{version}/garmin-connect-macos-x64"
      sha256 "30864f6ec43008d82a7d2b7f6a6320b9c0df933867f2b2d0686f88af1fbc42bc"
    end
  end

  def install
    if Hardware::CPU.arm?
      bin.install "garmin-connect-macos-arm64" => "garmin-connect"
    else
      bin.install "garmin-connect-macos-x64" => "garmin-connect"
    end
  end

  test do
    system "#{bin}/garmin-connect", "--version"
  end
end
