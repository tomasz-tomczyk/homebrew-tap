class Crit < Formula
  desc "Browser-based markdown review tool with inline commenting"
  homepage "https://github.com/tomasz-tomczyk/crit"
  version "0.16.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.16.0/crit-darwin-arm64"
      sha256 "47da6bebf50d9402cc51bc41848f5f9ea821245591410ecd69ea5ab086d08d91"
    end
    on_intel do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.16.0/crit-darwin-amd64"
      sha256 "c69a054d127a768b230f78160b5e35fa8b2af82adca4eeb330592bffa55d5208"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.16.0/crit-linux-arm64"
      sha256 "a548dbe8352856c6d992b41f195bc96bae491c4d2b720082cc9d8aaefb5d535f"
    end
    on_intel do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.16.0/crit-linux-amd64"
      sha256 "ef98e94d9033f193ae02beadbb5ae1a67cbb1a40727cfab6aafcce5ab3885c5a"
    end
  end

  def install
    binary = Dir["crit-*"].first || "crit"
    bin.install binary => "crit"
  end

  test do
    assert_match "0.16.0", shell_output("#{bin}/crit --version").strip
  end
end
