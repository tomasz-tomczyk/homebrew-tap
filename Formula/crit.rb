class Crit < Formula
  desc "Browser-based markdown review tool with inline commenting"
  homepage "https://github.com/tomasz-tomczyk/crit"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.6.0/crit-darwin-arm64"
      sha256 "48d797e2e04b9451b08c48e62609ba533fa69bdd2f7ae5d5a5dfe4d4afe3411e"
    end
    on_intel do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.6.0/crit-darwin-amd64"
      sha256 "9c3ba1cbfea9806becd3968bc1f672f1c1284d9653351e95835e97fa45803859"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.6.0/crit-linux-arm64"
      sha256 "c8aa3862ffa272902822f8728f0b8ccc3962aa2dc1c6e2bfa1fa4fb27b2a2e08"
    end
    on_intel do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.6.0/crit-linux-amd64"
      sha256 "62858981eaf48f652a8ad20b46891e0f437a19add3d79110fab6ebf6c7cc8328"
    end
  end

  def install
    binary = Dir["crit-*"].first || "crit"
    bin.install binary => "crit"
  end

  test do
    assert_match "0.6.0", shell_output("#{bin}/crit --version").strip
  end
end
