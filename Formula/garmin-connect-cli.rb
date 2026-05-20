class GarminConnectCli < Formula
  desc "Garmin Connect from your terminal"
  homepage "https://github.com/eddmann/garmin-connect-cli"
  version "1.0.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/eddmann/garmin-connect-cli/releases/download/v#{version}/garmin-connect-macos-arm64"
      sha256 "4e0855f8585a57fc8dd1fb85195ff996a2858b4f0537307ad049ed0664518998"
    end
    on_intel do
      url "https://github.com/eddmann/garmin-connect-cli/releases/download/v#{version}/garmin-connect-macos-x64"
      sha256 "672afc1559c0bdfa9ff7af9e2adf226e75ed98c58a3baf552cd10cc8d6328970"
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
