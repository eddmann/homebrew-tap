class Buns < Formula
  desc "Run TypeScript scripts with inline dependencies"
  homepage "https://github.com/eddmann/buns"
  version "0.0.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/eddmann/buns/releases/download/v#{version}/buns-macos-arm64"
      sha256 "2e7ae79a0ec474ca93d325d8b5e75a36da1486103aa9bd7d367be1c773b1b218"
    end
    on_intel do
      url "https://github.com/eddmann/buns/releases/download/v#{version}/buns-macos-x64"
      sha256 "a28f28fafa60c893179fad063f20a2651a679d05dec79c2df555f7ba79b18d81"
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
