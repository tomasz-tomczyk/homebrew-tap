class Crit < Formula
  desc "Browser-based markdown review tool with inline commenting"
  homepage "https://github.com/tomasz-tomczyk/crit"
  version "0.16.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.16.1/crit-darwin-arm64"
      sha256 "9789d5375dcad55eeae39bca0204dd042f5e57e6339f773cb5dd190e7d1f8ab5"
    end
    on_intel do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.16.1/crit-darwin-amd64"
      sha256 "b9d0889b2ae6a1c0570ce1a6557ff4a8e0c4965f63a07fb2592842aa101f9482"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.16.1/crit-linux-arm64"
      sha256 "08f39db72cc0acf87a2b657d335114efe333ebce74b750f68b42b16eda5020c7"
    end
    on_intel do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.16.1/crit-linux-amd64"
      sha256 "ba489abaf89f0402acf5a5ddd12305e43b72f4fef1586e429fb64dad799ef61a"
    end
  end

  def install
    binary = Dir["crit-*"].first || "crit"
    bin.install binary => "crit"
  end

  test do
    assert_match "0.16.1", shell_output("#{bin}/crit --version").strip
  end
end
