class Crit < Formula
  desc "Browser-based markdown review tool with inline commenting"
  homepage "https://github.com/tomasz-tomczyk/crit"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.4.0/crit-darwin-arm64"
      sha256 "f4abe7374f34c73076cc8729b4991505a855a7f38b794f4b23f6cfd37559930e"
    end
    on_intel do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.4.0/crit-darwin-amd64"
      sha256 "3ed124543b473d4c2bbf403f5882d5caaa3c5d93403c851c89b4d0e1dc564af3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.4.0/crit-linux-arm64"
      sha256 "934ac396567938c8a0ac8ce645ddf999c97bfe2d96904b9d4234fee7033d1403"
    end
    on_intel do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.4.0/crit-linux-amd64"
      sha256 "e05782daec05351ac295d1a25df9a3363e5796fcb6163777f1ac44b00c119ddf"
    end
  end

  def install
    binary = Dir["crit-*"].first || "crit"
    bin.install binary => "crit"
  end

  test do
    assert_match "0.4.0", shell_output("#{bin}/crit --version").strip
  end
end
