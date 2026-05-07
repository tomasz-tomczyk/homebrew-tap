class Crit < Formula
  desc "Browser-based markdown review tool with inline commenting"
  homepage "https://github.com/tomasz-tomczyk/crit"
  version "0.11.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.11.0/crit-darwin-arm64"
      sha256 "b9450b592a12c856e9fd2c8874c754aea8fbf633b3b498c16dfbdeb07f8c85c3"
    end
    on_intel do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.11.0/crit-darwin-amd64"
      sha256 "23e6b68b0ea79c6684386d404f874384366dc94e6e18dace8c0e097d9436617a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.11.0/crit-linux-arm64"
      sha256 "f8ba52d59bfe2ec9cac53cec41200e3fc140da903e47a6f574a8b38223e286c2"
    end
    on_intel do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.11.0/crit-linux-amd64"
      sha256 "dc125f5df9ef45ab7203e1696a9e09d85a751b0c4cbd282ac7329a32a1a98fae"
    end
  end

  def install
    binary = Dir["crit-*"].first || "crit"
    bin.install binary => "crit"
  end

  test do
    assert_match "0.11.0", shell_output("#{bin}/crit --version").strip
  end
end
