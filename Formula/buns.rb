class Buns < Formula
  desc "Run TypeScript scripts with inline dependencies"
  homepage "https://github.com/eddmann/buns"
  version "0.0.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/eddmann/buns/releases/download/v#{version}/buns-macos-arm64"
      sha256 "39a588d1bcaeb3822115fe54f35ac41d9c95604bb790e680206587f973ba676f"
    end
    on_intel do
      url "https://github.com/eddmann/buns/releases/download/v#{version}/buns-macos-x64"
      sha256 "8404e4b9274d1f3b6204d60b987ce121bd3f71cc4b17bf7bd5a6180afc894df3"
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
