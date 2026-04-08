class Crit < Formula
  desc "Browser-based markdown review tool with inline commenting"
  homepage "https://github.com/tomasz-tomczyk/crit"
  version "0.8.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.8.3/crit-darwin-arm64"
      sha256 "977e036399f9a9eec8f905214caf0cf7f8980828aa088765abac73ef94650655"
    end
    on_intel do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.8.3/crit-darwin-amd64"
      sha256 "9a2b2c3d2e3d82032ce9cbd23f09dc3654c9535c732312bb9527d1a843c0254b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.8.3/crit-linux-arm64"
      sha256 "1b88210ac65060839975babdd465a683a4d5177fbcc52c3aa2dac4d1908e21cf"
    end
    on_intel do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.8.3/crit-linux-amd64"
      sha256 "c5c06f5a937ed7aab86d4b297ffcf0941ec08fe3959c9c2b8d8b77ba9b08e73b"
    end
  end

  def install
    binary = Dir["crit-*"].first || "crit"
    bin.install binary => "crit"
  end

  test do
    assert_match "0.8.3", shell_output("#{bin}/crit --version").strip
  end
end
