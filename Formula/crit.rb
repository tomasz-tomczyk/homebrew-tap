class Crit < Formula
  desc "Browser-based markdown review tool with inline commenting"
  homepage "https://github.com/tomasz-tomczyk/crit"
  version "0.16.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.16.4/crit-darwin-arm64"
      sha256 "15db3ee2ccfabc2f720f6c5bfc5a882befd67e6eff69fbb789e86a208706b11f"
    end
    on_intel do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.16.4/crit-darwin-amd64"
      sha256 "d53f8858546d8e1b897a818d4800852c5f8bd7ad8a676f47d26accb46872503e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.16.4/crit-linux-arm64"
      sha256 "ea8139c7d848f960e0ab086236c1cfcec795a9c8bbb8c31bfcb7abf997127971"
    end
    on_intel do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.16.4/crit-linux-amd64"
      sha256 "5fd2ac567f174ef2cb171f6ef98085f59bfab3530fe5d3fd3d4bbdd73ec4b634"
    end
  end

  def install
    binary = Dir["crit-*"].first || "crit"
    bin.install binary => "crit"
  end

  test do
    assert_match "0.16.4", shell_output("#{bin}/crit --version").strip
  end
end
