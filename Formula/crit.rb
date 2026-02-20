class Crit < Formula
  desc "Browser-based markdown review tool with inline commenting"
  homepage "https://github.com/tomasz-tomczyk/crit"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.2.1/crit-darwin-arm64"
      sha256 "13b813fc25222d58fb14673752844f01954880f15e2cea3304f36b0c1a346c12"
    end
    on_intel do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.2.1/crit-darwin-amd64"
      sha256 "f56d42be40f60daab1c59813ba412d60ab5640674fcdb30c9708fdab8edeb2c2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.2.1/crit-linux-arm64"
      sha256 "496cd6e0db7f1634f7caed6916a18a3f88bd15496e3016e10135bca80e40ae0b"
    end
    on_intel do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.2.1/crit-linux-amd64"
      sha256 "a4d9bea869cb21c86dfceae195387d45d0e08f49c6017bd817994ce0051f6d6b"
    end
  end

  def install
    binary = Dir["crit-*"].first || "crit"
    bin.install binary => "crit"
  end

  test do
    assert_match "0.2.1", shell_output("#{bin}/crit --version").strip
  end
end
