class Crit < Formula
  desc "Browser-based markdown review tool with inline commenting"
  homepage "https://github.com/tomasz-tomczyk/crit"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.1.1/crit-darwin-arm64"
      sha256 "bb544802a69f249ff8442c83111a7d3c10586ddf1145525c7f862957d3f39489"
    end
    on_intel do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.1.1/crit-darwin-amd64"
      sha256 "0ff5e9194f5469f3c460ed5b51771afc7bedf22403799d48c194b61bbff31993"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.1.1/crit-linux-arm64"
      sha256 "6343c3e090e79357439e3b457d2416ce4a0335bfcdc2c071962b9947f333ccf1"
    end
    on_intel do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.1.1/crit-linux-amd64"
      sha256 "e247162f486409b24cc45a220a62777a65f4310153111be5bb184d456e1e57e4"
    end
  end

  def install
    binary = Dir["crit-*"].first || "crit"
    bin.install binary => "crit"
  end

  test do
    assert_match "0.1.1", shell_output("#{bin}/crit --version").strip
  end
end
