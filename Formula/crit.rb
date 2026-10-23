class Crit < Formula
  desc "Browser-based markdown review tool with inline commenting"
  homepage "https://github.com/tomasz-tomczyk/crit"
  version "0.23.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.23.1/crit-darwin-arm64"
      sha256 "ca1b0c4d39639b3516188921712d0e3a43f3a1327bf59cb54eb86e087ea38ace"
    end
    on_intel do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.23.1/crit-darwin-amd64"
      sha256 "12ee963cae04c915d229fb787d2eb428aa98596879f94b6895b7eb09a3e3889c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.23.1/crit-linux-arm64"
      sha256 "27cebe77a572919bb2248ce84778000ef1cf326de44c459fdacd3f8156df962c"
    end
    on_intel do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.23.1/crit-linux-amd64"
      sha256 "309e086e488a2c37a11760aefb78d2d6089ebcf21a6447adba4360ae850e5c0d"
    end
  end

  def install
    binary = Dir["crit-*"].first || "crit"
    bin.install binary => "crit"
  end

  test do
    assert_match "0.23.1", shell_output("#{bin}/crit --version").strip
  end
end
