class Crit < Formula
  desc "Browser-based markdown review tool with inline commenting"
  homepage "https://github.com/tomasz-tomczyk/crit"
  version "0.9.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.9.3/crit-darwin-arm64"
      sha256 "2a75c5b7f6bd811bc8aab91325365746e74500736e744b6a0711266c0d7744bf"
    end
    on_intel do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.9.3/crit-darwin-amd64"
      sha256 "7e74a0cdac31e157458bdab3561d5e6e0b6272ef6732c6dd96c188467491822c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.9.3/crit-linux-arm64"
      sha256 "031222623c5abfcfb96eab29eb55eef54dadada28c26acc9b7d10e86c9ea9916"
    end
    on_intel do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.9.3/crit-linux-amd64"
      sha256 "21cb058793d72c6f78cc856ef52d47aaa09d65d45e0f4b7b9672ee26416983a5"
    end
  end

  def install
    binary = Dir["crit-*"].first || "crit"
    bin.install binary => "crit"
  end

  test do
    assert_match "0.9.3", shell_output("#{bin}/crit --version").strip
  end
end
