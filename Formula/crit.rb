class Crit < Formula
  desc "Browser-based markdown review tool with inline commenting"
  homepage "https://github.com/tomasz-tomczyk/crit"
  version "0.0.0-sapling-rc2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.0.0-sapling-rc2/crit-darwin-arm64"
      sha256 "7990a138486ae19cba76946b4aa8c52d0372c5a6a8a5610d9295720c2bebf943"
    end
    on_intel do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.0.0-sapling-rc2/crit-darwin-amd64"
      sha256 "a8f0882f79e2c50388c0b5295b86d220e69beba670c1dc5233f7172fc7fdefcb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.0.0-sapling-rc2/crit-linux-arm64"
      sha256 "b66b116a54b3fb6bf9ffaf2042fc978a777346ff5bc6fc014ab436e7d5ef22ec"
    end
    on_intel do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.0.0-sapling-rc2/crit-linux-amd64"
      sha256 "086579eb29c9930667e25a7d135555be2bff842460d24972e710bd99905faa45"
    end
  end

  def install
    binary = Dir["crit-*"].first || "crit"
    bin.install binary => "crit"
  end

  test do
    assert_match "0.0.0-sapling-rc2", shell_output("#{bin}/crit --version").strip
  end
end
