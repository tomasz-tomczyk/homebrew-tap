class Crit < Formula
  desc "Browser-based markdown review tool with inline commenting"
  homepage "https://github.com/tomasz-tomczyk/crit"
  version "0.15.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.15.4/crit-darwin-arm64"
      sha256 "4ff075fcaca2b1d62d38b6ae83e3470e963f8e6b98002bd285a4bfcb76199dcb"
    end
    on_intel do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.15.4/crit-darwin-amd64"
      sha256 "5786d9fd7f9b3616d2b093461e580a8983d5e9aaa73d218daa0c6ddd91636d9b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.15.4/crit-linux-arm64"
      sha256 "4f9b6dc24ffeaa0a823f483eb29ad0358ba214dfef68abb6d94b01d4655b2a83"
    end
    on_intel do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.15.4/crit-linux-amd64"
      sha256 "8dddb3bf5bc8718200457692d8441fce6eff67590395f5ce693c960dd458e8bf"
    end
  end

  def install
    binary = Dir["crit-*"].first || "crit"
    bin.install binary => "crit"
  end

  test do
    assert_match "0.15.4", shell_output("#{bin}/crit --version").strip
  end
end
