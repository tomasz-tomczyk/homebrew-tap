class Crit < Formula
  desc "Browser-based markdown review tool with inline commenting"
  homepage "https://github.com/tomasz-tomczyk/crit"
  version "0.20.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.20.1/crit-darwin-arm64"
      sha256 "3db861c0d4abf0c5c62c54c5f167c2a601d3587fc00046cc2cf27fed6d8f7fe5"
    end
    on_intel do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.20.1/crit-darwin-amd64"
      sha256 "80f79c8a82b5c705721ed2c6f4b63b9dfecca81aff6b446478493bdd394e6649"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.20.1/crit-linux-arm64"
      sha256 "53e25e2d70aba779ae2162c9f63903140f5189fe6f7dbd31ceaae11ec9c05800"
    end
    on_intel do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.20.1/crit-linux-amd64"
      sha256 "e754e8cd7d878f890179801fbae3aca4e6ebfab2bd9a28b2d0b654b6b98007f2"
    end
  end

  def install
    binary = Dir["crit-*"].first || "crit"
    bin.install binary => "crit"
  end

  test do
    assert_match "0.20.1", shell_output("#{bin}/crit --version").strip
  end
end
