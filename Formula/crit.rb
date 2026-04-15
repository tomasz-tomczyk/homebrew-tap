class Crit < Formula
  desc "Browser-based markdown review tool with inline commenting"
  homepage "https://github.com/tomasz-tomczyk/crit"
  version "0.9.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.9.1/crit-darwin-arm64"
      sha256 "8dd1d9459f990d586a0bbba0d5806d304d6f501e70353674bcb59cbb499ea955"
    end
    on_intel do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.9.1/crit-darwin-amd64"
      sha256 "257266ee351757bd0a47346dbd584943aaa70eef60ba9e84520883db8539edd4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.9.1/crit-linux-arm64"
      sha256 "62f5413976ad713d59c068049355ac3125cecf2e8fa96120d32dd0b75c23dbaa"
    end
    on_intel do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.9.1/crit-linux-amd64"
      sha256 "b8b42dd1a4dc24de48724fa6a0f3745fb7c6e48b0dfee330a5e31565096f6c95"
    end
  end

  def install
    binary = Dir["crit-*"].first || "crit"
    bin.install binary => "crit"
  end

  test do
    assert_match "0.9.1", shell_output("#{bin}/crit --version").strip
  end
end
