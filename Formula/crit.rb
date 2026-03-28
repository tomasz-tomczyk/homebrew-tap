class Crit < Formula
  desc "Browser-based markdown review tool with inline commenting"
  homepage "https://github.com/tomasz-tomczyk/crit"
  version "0.8.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.8.0/crit-darwin-arm64"
      sha256 "20ce7b56ec018064ab970c80b5ab89bc30b047d4d9018807d8208db9aaec0a4d"
    end
    on_intel do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.8.0/crit-darwin-amd64"
      sha256 "32d3a4814b904b78cb1ec50b48cd8d352def22d26e676898a100edb2814c5b5f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.8.0/crit-linux-arm64"
      sha256 "cf9e470471d3775447cfed5c50e8104b0994869c8a2998ed06eda6faeb69a2a8"
    end
    on_intel do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.8.0/crit-linux-amd64"
      sha256 "4d620362ffb64f89bdee113d163f5e1dd03268cac04b192fc27cf4fc839e4da6"
    end
  end

  def install
    binary = Dir["crit-*"].first || "crit"
    bin.install binary => "crit"
  end

  test do
    assert_match "0.8.0", shell_output("#{bin}/crit --version").strip
  end
end
