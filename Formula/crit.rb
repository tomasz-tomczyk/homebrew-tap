class Crit < Formula
  desc "Browser-based markdown review tool with inline commenting"
  homepage "https://github.com/tomasz-tomczyk/crit"
  version "0.6.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.6.1/crit-darwin-arm64"
      sha256 "1d018b1354a959273fc850ee9e2ebdc1a0f4b4d86a9cc661b59aae99731a7abb"
    end
    on_intel do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.6.1/crit-darwin-amd64"
      sha256 "81ea1b35a907b87c36233bb20953b2be3e8c29ab6fc653a5568b00ce14f5d3eb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.6.1/crit-linux-arm64"
      sha256 "22b0d5220d676bbb3f9aec6ef03d60a97f8356a477892c547c50e6aee155867e"
    end
    on_intel do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.6.1/crit-linux-amd64"
      sha256 "d83f08791d71fbcb45ad076a63edc5db57bbba37175a970856af8f3af8bc6923"
    end
  end

  def install
    binary = Dir["crit-*"].first || "crit"
    bin.install binary => "crit"
  end

  test do
    assert_match "0.6.1", shell_output("#{bin}/crit --version").strip
  end
end
