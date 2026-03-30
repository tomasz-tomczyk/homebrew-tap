class Crit < Formula
  desc "Browser-based markdown review tool with inline commenting"
  homepage "https://github.com/tomasz-tomczyk/crit"
  version "0.8.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.8.1/crit-darwin-arm64"
      sha256 "5e523db925e9216fd5e2e794e62674735662ba66a6da557f2c553c28584750bd"
    end
    on_intel do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.8.1/crit-darwin-amd64"
      sha256 "82ce4aab5f9e048c7df6d98a0607852c836fdd48c7e0ceac4777af166b863f30"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.8.1/crit-linux-arm64"
      sha256 "255cce832b67cd3e836d83dfbf6331ea8037cb5d9081f8cba00da835f08a7d5c"
    end
    on_intel do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.8.1/crit-linux-amd64"
      sha256 "5d67e02b572b8f5e11d4617832a6d5fa8f5580c2d13974d3b158b5c7ff5711ca"
    end
  end

  def install
    binary = Dir["crit-*"].first || "crit"
    bin.install binary => "crit"
  end

  test do
    assert_match "0.8.1", shell_output("#{bin}/crit --version").strip
  end
end
