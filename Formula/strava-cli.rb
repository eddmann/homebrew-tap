class StravaCli < Formula
  desc "Strava from your terminal"
  homepage "https://github.com/eddmann/strava-cli"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/eddmann/strava-cli/releases/download/v#{version}/strava-macos-arm64"
      sha256 "bfa53a4771a7c0005ebd4250826ee36cf260bc4141af405e36fe9e131a030878"
    end
    on_intel do
      url "https://github.com/eddmann/strava-cli/releases/download/v#{version}/strava-macos-x64"
      sha256 "b863379baa62269d71e088a3e39d1eb67328b650455d14b1eb3d763855faf912"
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
