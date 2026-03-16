class Crit < Formula
  desc "Browser-based markdown review tool with inline commenting"
  homepage "https://github.com/tomasz-tomczyk/crit"
  version "0.5.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.5.1/crit-darwin-arm64"
      sha256 "b9437cd80cf27e204afab211d7dbb1e48c9b5c7de7fa17296f9024ca15e42d3b"
    end
    on_intel do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.5.1/crit-darwin-amd64"
      sha256 "4260308e2f5045f259073102073347f57cc8dddc7e8c97d14e42dbe110f38e15"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.5.1/crit-linux-arm64"
      sha256 "4a7e1fe622aa7da1ea6cc90ff6e5172232b09e0e7fd5439d5651e6e0f0b4b5f0"
    end
    on_intel do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.5.1/crit-linux-amd64"
      sha256 "60181774bba315d762105980d0e4b6f5483bd5dd62ff198983662f517a93b6e5"
    end
  end

  def install
    binary = Dir["crit-*"].first || "crit"
    bin.install binary => "crit"
  end

  test do
    assert_match "0.5.1", shell_output("#{bin}/crit --version").strip
  end
end
