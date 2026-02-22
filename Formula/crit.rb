class Crit < Formula
  desc "Browser-based markdown review tool with inline commenting"
  homepage "https://github.com/tomasz-tomczyk/crit"
  version "0.3.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.3.4/crit-darwin-arm64"
      sha256 "8e064ff43c0973785ce87fead5bc602b18cee369dd13c830295eae2361aa33c8"
    end
    on_intel do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.3.4/crit-darwin-amd64"
      sha256 "324d2ede2c002cafdc13a5b40f8a7231af70ed3645d723fdd9db49607dcec54a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.3.4/crit-linux-arm64"
      sha256 "d7b90c40e71ec6d5312d787382f86820968e0d3cd58265e825ddfd9e521cd21c"
    end
    on_intel do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.3.4/crit-linux-amd64"
      sha256 "44b41655e2cb60bb59c89ba813705dbf84faf5d0d345b0e2f68a7df7778bb8bf"
    end
  end

  def install
    binary = Dir["crit-*"].first || "crit"
    bin.install binary => "crit"
  end

  test do
    assert_match "0.3.4", shell_output("#{bin}/crit --version").strip
  end
end
