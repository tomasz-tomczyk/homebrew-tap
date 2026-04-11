class Crit < Formula
  desc "Browser-based markdown review tool with inline commenting"
  homepage "https://github.com/tomasz-tomczyk/crit"
  version "0.9.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.9.0/crit-darwin-arm64"
      sha256 "45f30b82332bd160a0ef734a722d0c0707d904e27fdc59a4b31126510a7fb05a"
    end
    on_intel do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.9.0/crit-darwin-amd64"
      sha256 "8eb6afd288a3d66d20eec1b23741110fc7c6d25fb2caade9ac24aef2d339ac0b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.9.0/crit-linux-arm64"
      sha256 "926c58915d6c5b0ea0f3892e5da730d7a8f16f4949b434fff5cc7934bd1215d5"
    end
    on_intel do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.9.0/crit-linux-amd64"
      sha256 "c236916020c55569b65e1e06bbfe780a38f5581620bf3cd724eecb813a0c11ca"
    end
  end

  def install
    binary = Dir["crit-*"].first || "crit"
    bin.install binary => "crit"
  end

  test do
    assert_match "0.9.0", shell_output("#{bin}/crit --version").strip
  end
end
