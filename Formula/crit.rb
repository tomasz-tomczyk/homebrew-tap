class Crit < Formula
  desc "Browser-based markdown review tool with inline commenting"
  homepage "https://github.com/tomasz-tomczyk/crit"
  version "0.4.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.4.5/crit-darwin-arm64"
      sha256 "572248349a7255335015fa94eb08a16b071a1e35382b93dc44346c62ed20f913"
    end
    on_intel do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.4.5/crit-darwin-amd64"
      sha256 "91a7fb1e90ab91f65086dd337c239f0f94aea16e4f2c3d28367e3bf8edacc0e4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.4.5/crit-linux-arm64"
      sha256 "74a22d7552ea5536e650451dfc271fa7481fee5be5df7fd60dd30ee6515521b4"
    end
    on_intel do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.4.5/crit-linux-amd64"
      sha256 "d183dd984fd88045a4936a3212e72b2d3b6c9fe707498b8b20daa073c5a9617a"
    end
  end

  def install
    binary = Dir["crit-*"].first || "crit"
    bin.install binary => "crit"
  end

  test do
    assert_match "0.4.5", shell_output("#{bin}/crit --version").strip
  end
end
