class Crit < Formula
  desc "Browser-based markdown review tool with inline commenting"
  homepage "https://github.com/tomasz-tomczyk/crit"
  version "0.10.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.10.3/crit-darwin-arm64"
      sha256 "6709cb93647e2773eb8c4b7f652d052defde7641d9a27fbaac997d472eb57bb4"
    end
    on_intel do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.10.3/crit-darwin-amd64"
      sha256 "78143cc733e494b007920ed11d8d9d146e013373709b38134cf253fda493e11c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.10.3/crit-linux-arm64"
      sha256 "e07fc983e4069c48185586932fcf499495eec7fb4f344bc551570e961b88339c"
    end
    on_intel do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.10.3/crit-linux-amd64"
      sha256 "3b9310c827404881f4fdcb6adf35ae8586eb540bddc060098bcc9dbbdbe77c16"
    end
  end

  def install
    binary = Dir["crit-*"].first || "crit"
    bin.install binary => "crit"
  end

  test do
    assert_match "0.10.3", shell_output("#{bin}/crit --version").strip
  end
end
