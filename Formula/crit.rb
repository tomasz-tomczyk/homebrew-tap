class Crit < Formula
  desc "Browser-based markdown review tool with inline commenting"
  homepage "https://github.com/tomasz-tomczyk/crit"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.6.0/crit-darwin-arm64"
      sha256 "f2c8f0e48033f0b02ca76a96766ed27df408cb006f413f434b944dc8099c8611"
    end
    on_intel do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.6.0/crit-darwin-amd64"
      sha256 "389e3e2ffda3d0e077b19db86721986a68f0f4bb3617a0889420b46c9ddf8599"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.6.0/crit-linux-arm64"
      sha256 "ae5cf34bb304649edcfd482eaa29705b3694b2e00f37219e554ee2691b1f5845"
    end
    on_intel do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.6.0/crit-linux-amd64"
      sha256 "927066934ca58c4b2c811cc106c319b8654e2ad50318f4f1b5d7733ada2e1d29"
    end
  end

  def install
    binary = Dir["crit-*"].first || "crit"
    bin.install binary => "crit"
  end

  test do
    assert_match "0.6.0", shell_output("#{bin}/crit --version").strip
  end
end
