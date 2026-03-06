class Crit < Formula
  desc "Browser-based markdown review tool with inline commenting"
  homepage "https://github.com/tomasz-tomczyk/crit"
  version "0.4.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.4.9/crit-darwin-arm64"
      sha256 "fa639505f199a69f2093c6be06f0f2fcbdf3d7e2444445cda4f69f6b36986a6b"
    end
    on_intel do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.4.9/crit-darwin-amd64"
      sha256 "f804f5960d03fd0d4f8aa880c3d2e4662f5ef3900c724a6eab8712510588ca35"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.4.9/crit-linux-arm64"
      sha256 "57dc0c39fcc93331fcb300a3fb9421f09ee3c52b9d82f7aba057bfbf0eaa29d3"
    end
    on_intel do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.4.9/crit-linux-amd64"
      sha256 "a254a689257dceb6dafbee8870cdf773505256028bb9d5e13a07c464eb422c8a"
    end
  end

  def install
    binary = Dir["crit-*"].first || "crit"
    bin.install binary => "crit"
  end

  test do
    assert_match "0.4.9", shell_output("#{bin}/crit --version").strip
  end
end
