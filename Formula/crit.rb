class Crit < Formula
  desc "Browser-based markdown review tool with inline commenting"
  homepage "https://github.com/tomasz-tomczyk/crit"
  version "0.17.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.17.0/crit-darwin-arm64"
      sha256 "9428ba79b3209597c801fd52232167005c1563225a1688a7643c6d94c2e7fb38"
    end
    on_intel do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.17.0/crit-darwin-amd64"
      sha256 "fe00afd908f631444bfee5d411ae745d9e45cdf74e5ae7e1ecf35760be70e040"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.17.0/crit-linux-arm64"
      sha256 "3052ae1364df283b8f936645ebfde458fd1b8341275a864643f8746e17e1032f"
    end
    on_intel do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.17.0/crit-linux-amd64"
      sha256 "654b344b0fe18ea7e0e4893978a9344d001f006e65cfe124a868cb2daa3878fc"
    end
  end

  def install
    binary = Dir["crit-*"].first || "crit"
    bin.install binary => "crit"
  end

  test do
    assert_match "0.17.0", shell_output("#{bin}/crit --version").strip
  end
end
