class Crit < Formula
  desc "Browser-based markdown review tool with inline commenting"
  homepage "https://github.com/tomasz-tomczyk/crit"
  version "0.16.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.16.3/crit-darwin-arm64"
      sha256 "e23670d4fb1e6ca5481ce0104c22837beb062b2aab4863300bfd9f2f727a2de0"
    end
    on_intel do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.16.3/crit-darwin-amd64"
      sha256 "a26f9ccf355b5e068c04e814b290ab66b0c8a8ef7da90834ed79b99b4ce6dcfc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.16.3/crit-linux-arm64"
      sha256 "c83fc641735dee2376aabd6a506aeaee72d326eaa1a86eebc71aafbab75ba867"
    end
    on_intel do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.16.3/crit-linux-amd64"
      sha256 "e937bd0779c0eb153c1d5e29886205e966fec81ba4138483b5fc1981c3645d19"
    end
  end

  def install
    binary = Dir["crit-*"].first || "crit"
    bin.install binary => "crit"
  end

  test do
    assert_match "0.16.3", shell_output("#{bin}/crit --version").strip
  end
end
