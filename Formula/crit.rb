class Crit < Formula
  desc "Browser-based markdown review tool with inline commenting"
  homepage "https://github.com/tomasz-tomczyk/crit"
  version "0.20.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.20.0/crit-darwin-arm64"
      sha256 "de8e6edd1ea146c57ee0fda4f2a609e9e1185474aba7081b0b4a93459d7a2231"
    end
    on_intel do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.20.0/crit-darwin-amd64"
      sha256 "177eca25d0f4db51f867a377fa4773b99b267e27d3cec413fc756badae3b41ea"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.20.0/crit-linux-arm64"
      sha256 "86c6faf9225d52af11c9f82abd9aef659c9e7b6a38615b97bfca87483a53b036"
    end
    on_intel do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.20.0/crit-linux-amd64"
      sha256 "28cbb0f6855fea49077d3adc2fe6392a70058e417ee435cfe27e5792bd78596d"
    end
  end

  def install
    binary = Dir["crit-*"].first || "crit"
    bin.install binary => "crit"
  end

  test do
    assert_match "0.20.0", shell_output("#{bin}/crit --version").strip
  end
end
