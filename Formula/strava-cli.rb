class StravaCli < Formula
  desc "Strava from your terminal"
  homepage "https://github.com/eddmann/strava-cli"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/eddmann/strava-cli/releases/download/v#{version}/strava-macos-arm64"
      sha256 "196789ad4674a82e79687be26b34c3b4fedb75a7766558f495b4ed19d6f7aefc"
    end
    on_intel do
      url "https://github.com/eddmann/strava-cli/releases/download/v#{version}/strava-macos-x64"
      sha256 "f43c63f72f1b0bd7ca6683e6747a456da3dd30f0e0546afc51cb8668436da119"
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
