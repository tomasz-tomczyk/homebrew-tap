class Crit < Formula
  desc "Browser-based markdown review tool with inline commenting"
  homepage "https://github.com/tomasz-tomczyk/crit"
  version "0.12.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.12.0/crit-darwin-arm64"
      sha256 "2bf0d4d2408737bf8bcf0bf13fc0064857a8b96080296a3c6fca42f5210d8a4f"
    end
    on_intel do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.12.0/crit-darwin-amd64"
      sha256 "af1641f446867839093503240d376df092a69210c37339bb819c76e3da00d2d8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.12.0/crit-linux-arm64"
      sha256 "5713b05228484e3d7526687760ab2e2d9111682db204e1ba87214850be49f3cc"
    end
    on_intel do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.12.0/crit-linux-amd64"
      sha256 "bb4a5931eea7becc26998c73567622adaf3b51604a45a96f6394899098f787bd"
    end
  end

  def install
    binary = Dir["crit-*"].first || "crit"
    bin.install binary => "crit"
  end

  test do
    assert_match "0.12.0", shell_output("#{bin}/crit --version").strip
  end
end
