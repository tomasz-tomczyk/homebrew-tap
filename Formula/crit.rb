class Crit < Formula
  desc "Browser-based markdown review tool with inline commenting"
  homepage "https://github.com/tomasz-tomczyk/crit"
  version "0.10.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.10.2/crit-darwin-arm64"
      sha256 "36f4293e8dbdf3c27b8fff79abe1861e16e448cdc01f27e425d37aa1fcf6602d"
    end
    on_intel do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.10.2/crit-darwin-amd64"
      sha256 "d211a5eef9cd498cf617249f4c99e579da21bfd90c7e9d1d75e4472fa59672ba"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.10.2/crit-linux-arm64"
      sha256 "134ec04be6db6443ffafa0540287b9839e3511382a0401b2c6d6ddc0f0855b2d"
    end
    on_intel do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.10.2/crit-linux-amd64"
      sha256 "2a2a838ad805b1c028dc177e8d81c6dc28dd1df6d0ad35fc8848f6e46e29fc58"
    end
  end

  def install
    binary = Dir["crit-*"].first || "crit"
    bin.install binary => "crit"
  end

  test do
    assert_match "0.10.2", shell_output("#{bin}/crit --version").strip
  end
end
