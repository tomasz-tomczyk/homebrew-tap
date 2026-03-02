class Crit < Formula
  desc "Browser-based markdown review tool with inline commenting"
  homepage "https://github.com/tomasz-tomczyk/crit"
  version "0.4.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.4.4/crit-darwin-arm64"
      sha256 "df27d2e3fe60cec73591030b39070433d231e090ec05c7e53759eea157ccdcdb"
    end
    on_intel do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.4.4/crit-darwin-amd64"
      sha256 "f120c3d62169c326c72b3acfc3749eae31bebd7e585356d57159de8ef3a71c34"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.4.4/crit-linux-arm64"
      sha256 "6fcd65b7d2ce00d47a9f558fafe346e314700770b5e09719dc6d25f873aea649"
    end
    on_intel do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.4.4/crit-linux-amd64"
      sha256 "72e7e54482130fac4d882222666dd9d9e50a0aee18a134d67d4429f488da07f2"
    end
  end

  def install
    binary = Dir["crit-*"].first || "crit"
    bin.install binary => "crit"
  end

  test do
    assert_match "0.4.4", shell_output("#{bin}/crit --version").strip
  end
end
