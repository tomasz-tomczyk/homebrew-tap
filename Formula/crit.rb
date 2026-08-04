class Crit < Formula
  desc "Browser-based markdown review tool with inline commenting"
  homepage "https://github.com/tomasz-tomczyk/crit"
  version "0.18.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.18.3/crit-darwin-arm64"
      sha256 "d63b391b31c8ba91e1a1ee43b8570361ef5cd6c6817a3071ef3ac8e478123e9f"
    end
    on_intel do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.18.3/crit-darwin-amd64"
      sha256 "972b36391122a48ce2932b4e8a94c22e1e893f76ce49803fa5749e235987ebcb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.18.3/crit-linux-arm64"
      sha256 "aa57a8b7ceed988fc838150960dde42963b5d333ed95b836c816d5d615cb3f5f"
    end
    on_intel do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.18.3/crit-linux-amd64"
      sha256 "f1c449a0b4b7c27113933fa10ac9960388df625f5e3b1c19ad40fc4bdba43c97"
    end
  end

  def install
    binary = Dir["crit-*"].first || "crit"
    bin.install binary => "crit"
  end

  test do
    assert_match "0.18.3", shell_output("#{bin}/crit --version").strip
  end
end
