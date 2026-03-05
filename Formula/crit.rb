class Crit < Formula
  desc "Browser-based markdown review tool with inline commenting"
  homepage "https://github.com/tomasz-tomczyk/crit"
  version "0.4.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.4.8/crit-darwin-arm64"
      sha256 "5de38d9a72c4815b8a027afc2b08abd372366a990dfb83c15696c5ee97490ebe"
    end
    on_intel do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.4.8/crit-darwin-amd64"
      sha256 "f11b6578ff1608e2e3dee13206b0d2448394b61a544e52a22cbcc334c898db58"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.4.8/crit-linux-arm64"
      sha256 "d19081a4b0a757e99122202a6763966f8d07cb0e6b80db4503424a61a4cabbdf"
    end
    on_intel do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.4.8/crit-linux-amd64"
      sha256 "f4587c3634771d535ddf836fdbc8b8a7e5dfed3e201fcbe0c0ac19dd0177b838"
    end
  end

  def install
    binary = Dir["crit-*"].first || "crit"
    bin.install binary => "crit"
  end

  test do
    assert_match "0.4.8", shell_output("#{bin}/crit --version").strip
  end
end
