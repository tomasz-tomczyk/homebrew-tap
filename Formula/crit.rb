class Crit < Formula
  desc "Browser-based markdown review tool with inline commenting"
  homepage "https://github.com/tomasz-tomczyk/crit"
  version "0.20.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.20.3/crit-darwin-arm64"
      sha256 "83df98726dbbc85f6d84326d35e335cdbec2756b53b9710eeab92cc1b02334e6"
    end
    on_intel do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.20.3/crit-darwin-amd64"
      sha256 "30c2cd37d7534c51b111babf78f8f0abd7d7750d6d37bf237c3764241099777b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.20.3/crit-linux-arm64"
      sha256 "5a779fa202a1c7e8a1a6c5b05b4afa3a098b77c0c25103b0daf1d899f6d766ff"
    end
    on_intel do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.20.3/crit-linux-amd64"
      sha256 "d3a348770e828f9f1710501735504107d1eccb195f29cacdffed92f75b6abba1"
    end
  end

  def install
    binary = Dir["crit-*"].first || "crit"
    bin.install binary => "crit"
  end

  test do
    assert_match "0.20.3", shell_output("#{bin}/crit --version").strip
  end
end
