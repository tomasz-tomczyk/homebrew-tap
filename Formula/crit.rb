class Crit < Formula
  desc "Browser-based markdown review tool with inline commenting"
  homepage "https://github.com/tomasz-tomczyk/crit"
  version "0.0.0-sapling-rc3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.0.0-sapling-rc3/crit-darwin-arm64"
      sha256 "54b3a9673b7f84996bce76f966321faba55ec637b774d92ba4e39c5e23d68e6e"
    end
    on_intel do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.0.0-sapling-rc3/crit-darwin-amd64"
      sha256 "a93adcb1a45378ebc873d357769cbea82f989001bcb024e2552c4785acfc28ec"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.0.0-sapling-rc3/crit-linux-arm64"
      sha256 "9618adc6458db7135bf9d4a215362f27d38e3f261910e960478ed6c9ff66a354"
    end
    on_intel do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.0.0-sapling-rc3/crit-linux-amd64"
      sha256 "874341d69b603054f65286ebe36da525508c4bd4c347f3f5de818c317c08b47c"
    end
  end

  def install
    binary = Dir["crit-*"].first || "crit"
    bin.install binary => "crit"
  end

  test do
    assert_match "0.0.0-sapling-rc3", shell_output("#{bin}/crit --version").strip
  end
end
