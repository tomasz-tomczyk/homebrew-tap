class Crit < Formula
  desc "Browser-based markdown review tool with inline commenting"
  homepage "https://github.com/tomasz-tomczyk/crit"
  version "0.4.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.4.2/crit-darwin-arm64"
      sha256 "e3fb32379dac91fae1e383fc6f288f619c7e995ebdb46ff94afd51c2b780a60c"
    end
    on_intel do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.4.2/crit-darwin-amd64"
      sha256 "bd26759db1824e3895f26ba423066bf3441c08ad11d7fe338947f57529a08307"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.4.2/crit-linux-arm64"
      sha256 "cda5a29186da8f1165ae8d22523eeb246c68d8504a09063736dee8b9fafa53f2"
    end
    on_intel do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.4.2/crit-linux-amd64"
      sha256 "4ebc50709a2511b1fe008b08813c0109c78f12d1632d918daa1c8fb5138a0970"
    end
  end

  def install
    binary = Dir["crit-*"].first || "crit"
    bin.install binary => "crit"
  end

  test do
    assert_match "0.4.2", shell_output("#{bin}/crit --version").strip
  end
end
