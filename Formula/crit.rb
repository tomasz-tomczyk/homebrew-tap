class Crit < Formula
  desc "Browser-based markdown review tool with inline commenting"
  homepage "https://github.com/tomasz-tomczyk/crit"
  version "0.15.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.15.2/crit-darwin-arm64"
      sha256 "e370c3acd1aed58570abc684b8ae7a876f7a2e0018ad50ec3fb3ec4ff0132593"
    end
    on_intel do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.15.2/crit-darwin-amd64"
      sha256 "66ddcbe3350cb88f01148e357b72d195d708bc74748f0cbe51a7ed792c9179bd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.15.2/crit-linux-arm64"
      sha256 "3206b233d21bafde39214cb1f6f9223f4bd66e8bba15c03a42fee2e02e83707e"
    end
    on_intel do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.15.2/crit-linux-amd64"
      sha256 "e152474eab9bfcef69db08c2cacf22e3f969c71394ad966a5b2f2258ec71e19d"
    end
  end

  def install
    binary = Dir["crit-*"].first || "crit"
    bin.install binary => "crit"
  end

  test do
    assert_match "0.15.2", shell_output("#{bin}/crit --version").strip
  end
end
