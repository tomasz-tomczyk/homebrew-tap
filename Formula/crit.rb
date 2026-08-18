class Crit < Formula
  desc "Browser-based markdown review tool with inline commenting"
  homepage "https://github.com/tomasz-tomczyk/crit"
  version "0.19.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.19.0/crit-darwin-arm64"
      sha256 "683e12921f8cf65b1f2181d509d5e88fdf834d082f348eaf4c2722b4dbb2be52"
    end
    on_intel do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.19.0/crit-darwin-amd64"
      sha256 "cc8ff9b01c2b6fee14d368a8c78efe8c67ed6e610d579902106d0cab1b86ab22"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.19.0/crit-linux-arm64"
      sha256 "77e65355516f32cce1bf2b88607b363732351b2e6be9a12b8e7bc1a51ab79455"
    end
    on_intel do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.19.0/crit-linux-amd64"
      sha256 "d20ee8c3696be4d95e43074ed976525be0784beec483b356c41874a385b92be5"
    end
  end

  def install
    binary = Dir["crit-*"].first || "crit"
    bin.install binary => "crit"
  end

  test do
    assert_match "0.19.0", shell_output("#{bin}/crit --version").strip
  end
end
