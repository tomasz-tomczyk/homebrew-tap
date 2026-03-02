class Crit < Formula
  desc "Browser-based markdown review tool with inline commenting"
  homepage "https://github.com/tomasz-tomczyk/crit"
  version "0.4.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.4.3/crit-darwin-arm64"
      sha256 "8379f440fad067db143f190500f0e3372fe15603f67f712b59bb74f670a164d6"
    end
    on_intel do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.4.3/crit-darwin-amd64"
      sha256 "35b1f9246208f9ad05ad82b4572a45cdd9d41b1da01d8d70ab0492818420e999"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.4.3/crit-linux-arm64"
      sha256 "87c0bfaace5e2f58e12459a646644e35f8f5481da7bd6a0186e1044ce918d3d9"
    end
    on_intel do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.4.3/crit-linux-amd64"
      sha256 "a3ceaba17a2adcdbf5459f263f833c62de2299c6639eadbbe7347b89b254a0e7"
    end
  end

  def install
    binary = Dir["crit-*"].first || "crit"
    bin.install binary => "crit"
  end

  test do
    assert_match "0.4.3", shell_output("#{bin}/crit --version").strip
  end
end
