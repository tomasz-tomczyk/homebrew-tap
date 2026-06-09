class Crit < Formula
  desc "Browser-based markdown review tool with inline commenting"
  homepage "https://github.com/tomasz-tomczyk/crit"
  version "0.16.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.16.2/crit-darwin-arm64"
      sha256 "a6c5b3162daae45654dc1e87928fff1665d05c6cd0b15e34a292b98f1a22a960"
    end
    on_intel do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.16.2/crit-darwin-amd64"
      sha256 "cd75371126e903e8705579d7b3465589d2f70ed4b3e0f6efa15009fa319dacb9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.16.2/crit-linux-arm64"
      sha256 "d10d4a5d7c9a42f5c159bf8af53034062a6a9bfab92b8de759766d7a4e2b39a3"
    end
    on_intel do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.16.2/crit-linux-amd64"
      sha256 "016790acb22da1499d8631ed9426d06de4b0c76ee578fdae41d5023848ba6934"
    end
  end

  def install
    binary = Dir["crit-*"].first || "crit"
    bin.install binary => "crit"
  end

  test do
    assert_match "0.16.2", shell_output("#{bin}/crit --version").strip
  end
end
