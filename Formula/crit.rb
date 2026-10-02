class Crit < Formula
  desc "Browser-based markdown review tool with inline commenting"
  homepage "https://github.com/tomasz-tomczyk/crit"
  version "0.21.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.21.1/crit-darwin-arm64"
      sha256 "40cc7014f0b6c7d604be0bfdf4c462e2366549c520b95b790b414aa221d2a9a0"
    end
    on_intel do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.21.1/crit-darwin-amd64"
      sha256 "08f9f1a7e2f56f5d4dc5d9d86d0e06e92c165d2b885745d6ffed5ab3eda354dc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.21.1/crit-linux-arm64"
      sha256 "875c03a0b75de7777a26294dc585f59f3e4f49fe2735f5043fb668f92e2dc258"
    end
    on_intel do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.21.1/crit-linux-amd64"
      sha256 "bbc7de53ebb29377c412d1737c658752efeaf44e8bd0f124278f6e41632ad670"
    end
  end

  def install
    binary = Dir["crit-*"].first || "crit"
    bin.install binary => "crit"
  end

  test do
    assert_match "0.21.1", shell_output("#{bin}/crit --version").strip
  end
end
