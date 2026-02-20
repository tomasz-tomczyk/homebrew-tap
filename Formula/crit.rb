class Crit < Formula
  desc "Browser-based markdown review tool with inline commenting"
  homepage "https://github.com/tomasz-tomczyk/crit"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.3.0/crit-darwin-arm64"
      sha256 "ca0b9dcb6524ab6907cdd3ebf953ce61a20a275973de75e9635917af114c81e2"
    end
    on_intel do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.3.0/crit-darwin-amd64"
      sha256 "f69621bee317ab6528793549aa4b180879b6af1e702613b55da5ae1bb43aa2c8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.3.0/crit-linux-arm64"
      sha256 "91b261a2442b20b46a46df84502722c04bce6f210ed0937a960873b48283050d"
    end
    on_intel do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.3.0/crit-linux-amd64"
      sha256 "ad95f491fc7f3f24de223dd6b93601cca27e98a2647b42713a96406b7baa300b"
    end
  end

  def install
    binary = Dir["crit-*"].first || "crit"
    bin.install binary => "crit"
  end

  test do
    assert_match "0.3.0", shell_output("#{bin}/crit --version").strip
  end
end
