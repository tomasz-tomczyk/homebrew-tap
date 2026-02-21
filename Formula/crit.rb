class Crit < Formula
  desc "Browser-based markdown review tool with inline commenting"
  homepage "https://github.com/tomasz-tomczyk/crit"
  version "0.3.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.3.3/crit-darwin-arm64"
      sha256 "fff62de9b94915e5f65df6d56c1783fff7b357fcf918497a56ae6103bc00b236"
    end
    on_intel do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.3.3/crit-darwin-amd64"
      sha256 "b265c80de6be750b6fdd1d7fa184ebfba51d82acb00d6022a122846c6e680ee0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.3.3/crit-linux-arm64"
      sha256 "b4337d9a8706237bfce93359cf0419c6c4bdcd32793e590fa1b67800eced46fc"
    end
    on_intel do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.3.3/crit-linux-amd64"
      sha256 "57cff3fd0ea4bfa090505163b3f3d31128b6674209cf0f2f1630dedc1cb3ae34"
    end
  end

  def install
    binary = Dir["crit-*"].first || "crit"
    bin.install binary => "crit"
  end

  test do
    assert_match "0.3.3", shell_output("#{bin}/crit --version").strip
  end
end
