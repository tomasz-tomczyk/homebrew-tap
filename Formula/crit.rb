class Crit < Formula
  desc "Browser-based markdown review tool with inline commenting"
  homepage "https://github.com/tomasz-tomczyk/crit"
  version "0.10.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.10.0/crit-darwin-arm64"
      sha256 "31f6f7a7f8f03c1cb56d76553734dee906caed23d59b2906d0ad7cb317d6e2b7"
    end
    on_intel do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.10.0/crit-darwin-amd64"
      sha256 "fb93c121bb3ebc2df343dd8266df14ded3b182efd350bc2107a006887f7c8ace"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.10.0/crit-linux-arm64"
      sha256 "af780f32bc30c0727ee9a3b731edba2194600c2aec058dce22e3e97c427c63a0"
    end
    on_intel do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.10.0/crit-linux-amd64"
      sha256 "93cffc80081424373646f6e186194019bbdf520bb5b05fb175edcbe8061c5dfa"
    end
  end

  def install
    binary = Dir["crit-*"].first || "crit"
    bin.install binary => "crit"
  end

  test do
    assert_match "0.10.0", shell_output("#{bin}/crit --version").strip
  end
end
