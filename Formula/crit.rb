class Crit < Formula
  desc "Browser-based markdown review tool with inline commenting"
  homepage "https://github.com/tomasz-tomczyk/crit"
  version "0.22.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.22.0/crit-darwin-arm64"
      sha256 "60153a194b85ba85ad72225694a2ccd7f348bc08bece756f7b56a0444a33e93d"
    end
    on_intel do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.22.0/crit-darwin-amd64"
      sha256 "1f88b739234931a583097522bad29aa30566fa3ecb3227d753bb5ec01d4c369b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.22.0/crit-linux-arm64"
      sha256 "92311ddf4862179c655087d4703e7f2e3f4b4aacb0549c22e5dae999c0fb2b6e"
    end
    on_intel do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.22.0/crit-linux-amd64"
      sha256 "fecd40eea356020cd605dfca6a4be6ab3c9635134ca5e28ee99e6286ab62c31d"
    end
  end

  def install
    binary = Dir["crit-*"].first || "crit"
    bin.install binary => "crit"
  end

  test do
    assert_match "0.22.0", shell_output("#{bin}/crit --version").strip
  end
end
