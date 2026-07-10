class Crit < Formula
  desc "Browser-based markdown review tool with inline commenting"
  homepage "https://github.com/tomasz-tomczyk/crit"
  version "0.18.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.18.0/crit-darwin-arm64"
      sha256 "b21bfb5a4ea840d2119bd1e2ccf32d83839816df164ee215cfeebf9557db7814"
    end
    on_intel do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.18.0/crit-darwin-amd64"
      sha256 "abf42a054e7631478ec14e2d722cc748f091a9c1ddc8211e6f7aa2e839efc970"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.18.0/crit-linux-arm64"
      sha256 "25d9855d1e361a8fcdd1ed76578a9dfd787ebcfb93f0e5e71707016cee4e3653"
    end
    on_intel do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.18.0/crit-linux-amd64"
      sha256 "f709483e1973d3f98b3839604f271e74eb118742082ba2132189930a7fae05e4"
    end
  end

  def install
    binary = Dir["crit-*"].first || "crit"
    bin.install binary => "crit"
  end

  test do
    assert_match "0.18.0", shell_output("#{bin}/crit --version").strip
  end
end
