class GarminConnectCli < Formula
  desc "Garmin Connect from your terminal"
  homepage "https://github.com/eddmann/garmin-connect-cli"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/eddmann/garmin-connect-cli/releases/download/v#{version}/garmin-connect-macos-arm64"
      sha256 "0609c852d46f93f688407dff2418c4b0253467bd3fc78ad56ca4d91ec2807393"
    end
    on_intel do
      url "https://github.com/eddmann/garmin-connect-cli/releases/download/v#{version}/garmin-connect-macos-x64"
      sha256 "8151fe1d03c595c94d3286a41856b8170c296b4549caa963bdb878aba3973d67"
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
