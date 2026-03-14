class Crit < Formula
  desc "Browser-based markdown review tool with inline commenting"
  homepage "https://github.com/tomasz-tomczyk/crit"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.5.0/crit-darwin-arm64"
      sha256 "01c969cd2b94b1a94cd303ae5112e6745bddc9194f15877c1659b7449338453d"
    end
    on_intel do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.5.0/crit-darwin-amd64"
      sha256 "d09b3a37b240a5ff41a33b86e07a7264b373306795c06d1a999a2c45cb1f2917"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.5.0/crit-linux-arm64"
      sha256 "6f358e7bcb169a4be6c90862e1974cf632d73888b31566dd9d56decd55d5fbe1"
    end
    on_intel do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.5.0/crit-linux-amd64"
      sha256 "47acac9ba9066c051f88a744be12871ca91996f3f1e3300c95b1d309d5e8d10c"
    end
  end

  def install
    binary = Dir["crit-*"].first || "crit"
    bin.install binary => "crit"
  end

  test do
    assert_match "0.5.0", shell_output("#{bin}/crit --version").strip
  end
end
