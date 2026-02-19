class Crit < Formula
  desc "Browser-based markdown review tool with inline commenting"
  homepage "https://github.com/tomasz-tomczyk/crit"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.2.0/crit-darwin-arm64"
      sha256 "62e6a28217b7ebf5960741c027401832667bf7805b6bbbebc0228a3e76f89ca2"
    end
    on_intel do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.2.0/crit-darwin-amd64"
      sha256 "1303dbe56c850365479719b71a513edf97fd301e5535af9a9bc6734e5c070c43"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.2.0/crit-linux-arm64"
      sha256 "e9ced2e914ea07eef40fd3851786d5cdaddecb6ec8f2a23a23daca4a92aee0c7"
    end
    on_intel do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.2.0/crit-linux-amd64"
      sha256 "e1f2cd0463ecc2bfecaab6bef769a8407a532a8d4724ab970d3c53920852cbbd"
    end
  end

  def install
    binary = Dir["crit-*"].first || "crit"
    bin.install binary => "crit"
  end

  test do
    assert_match "0.2.0", shell_output("#{bin}/crit --version").strip
  end
end
