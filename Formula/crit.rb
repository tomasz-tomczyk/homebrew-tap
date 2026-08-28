class Crit < Formula
  desc "Browser-based markdown review tool with inline commenting"
  homepage "https://github.com/tomasz-tomczyk/crit"
  version "0.19.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.19.1/crit-darwin-arm64"
      sha256 "8ec9468b6fc39e0121a887959c0c95e0301aa12af40bfb449e8d194601a6cfbb"
    end
    on_intel do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.19.1/crit-darwin-amd64"
      sha256 "68480411729e5ee645be1dda72a23174608af06cb874de5462ec83c59a56c072"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.19.1/crit-linux-arm64"
      sha256 "ddd19202edeead140c12b3b2f00f568ae33ef3124a77b3b04ef9b68e7787998f"
    end
    on_intel do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.19.1/crit-linux-amd64"
      sha256 "cdc0769ac41c12fc210e70f43eb33b2d75cba7f6052b47d01f1349215ce1f7ad"
    end
  end

  def install
    binary = Dir["crit-*"].first || "crit"
    bin.install binary => "crit"
  end

  test do
    assert_match "0.19.1", shell_output("#{bin}/crit --version").strip
  end
end
