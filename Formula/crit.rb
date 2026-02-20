class Crit < Formula
  desc "Browser-based markdown review tool with inline commenting"
  homepage "https://github.com/tomasz-tomczyk/crit"
  version "0.3.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.3.1/crit-darwin-arm64"
      sha256 "1ac982ff2b06ee01cf75700e5bfff6d691546d086f00c3ea090dda0aaeab653a"
    end
    on_intel do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.3.1/crit-darwin-amd64"
      sha256 "c2dc31e184897a65c7015c7f34a220543964c014dc0f197f014d537c95c9dfbf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.3.1/crit-linux-arm64"
      sha256 "788e8ec24815a4ba2fa86827ed25037f313a18a0d048ea3297d03293db347d20"
    end
    on_intel do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.3.1/crit-linux-amd64"
      sha256 "c63c965a728422301d99525ad11397befb98d630b2a107dc8fd22a94e9ed4c99"
    end
  end

  def install
    binary = Dir["crit-*"].first || "crit"
    bin.install binary => "crit"
  end

  test do
    assert_match "0.3.1", shell_output("#{bin}/crit --version").strip
  end
end
