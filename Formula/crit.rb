class Crit < Formula
  desc "Browser-based markdown review tool with inline commenting"
  homepage "https://github.com/tomasz-tomczyk/crit"
  version "0.4.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.4.7/crit-darwin-arm64"
      sha256 "2cd9a24fc1381af9d855a250a038dd20348884114ae7f3db9b72b49ca5315e43"
    end
    on_intel do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.4.7/crit-darwin-amd64"
      sha256 "16b90864c72965b6c85a5b4f999deb8d35a4c5607ae3b4aa8a7e8ffb6d71e098"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.4.7/crit-linux-arm64"
      sha256 "6174468b84d992aa7a0323a99c2412c26ae19fbe51308c7dbd706293d2d2102c"
    end
    on_intel do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.4.7/crit-linux-amd64"
      sha256 "856fb27862975343b3dcbd973f0bace4db813d6f064f1df1fda1c0ceb9aca12b"
    end
  end

  def install
    binary = Dir["crit-*"].first || "crit"
    bin.install binary => "crit"
  end

  test do
    assert_match "0.4.7", shell_output("#{bin}/crit --version").strip
  end
end
