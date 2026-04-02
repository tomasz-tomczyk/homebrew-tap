class Crit < Formula
  desc "Browser-based markdown review tool with inline commenting"
  homepage "https://github.com/tomasz-tomczyk/crit"
  version "0.8.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.8.2/crit-darwin-arm64"
      sha256 "d47cb147c6899ee1544c636bfb8feccc69269234f779d5aea816cd173062efb4"
    end
    on_intel do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.8.2/crit-darwin-amd64"
      sha256 "0c1d99265c793f3496b2e88c1bc8127ac86fc55ea29eedbe62476560eec123d5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.8.2/crit-linux-arm64"
      sha256 "76ebb9db0e65b920e7a91c602785c250b6031e31484a08ad20dff18c55d2e780"
    end
    on_intel do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.8.2/crit-linux-amd64"
      sha256 "cc9e5b3fa98892f54ef725c7a0630caa070654193580f9d9d8ff1ed98d4b6f5f"
    end
  end

  def install
    binary = Dir["crit-*"].first || "crit"
    bin.install binary => "crit"
  end

  test do
    assert_match "0.8.2", shell_output("#{bin}/crit --version").strip
  end
end
