class GarminConnectCli < Formula
  desc "Garmin Connect from your terminal"
  homepage "https://github.com/eddmann/garmin-connect-cli"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/eddmann/garmin-connect-cli/releases/download/v#{version}/garmin-connect-macos-arm64"
      sha256 "758dd77f9f6bda8e32f75a088d6e9a7e0d069d157ef880584178c06e5f9e9bd0"
    end
    on_intel do
      url "https://github.com/eddmann/garmin-connect-cli/releases/download/v#{version}/garmin-connect-macos-x64"
      sha256 "e0ee72f7f90ecea14c3c38325b86f95feb882f13e50039cbedae934dda4eea38"
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
