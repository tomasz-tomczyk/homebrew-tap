class Crit < Formula
  desc "Browser-based markdown review tool with inline commenting"
  homepage "https://github.com/tomasz-tomczyk/crit"
  version "0.6.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.6.2/crit-darwin-arm64"
      sha256 "5766ed05a80f6ad79b5e71117cbd5ea9b503a101d95ae18c66bcd990d1ba2556"
    end
    on_intel do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.6.2/crit-darwin-amd64"
      sha256 "d218415d4132895d91c561a3d08dc6e3af8bd9565d6b27cf04e946f76076a8b8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.6.2/crit-linux-arm64"
      sha256 "e9e01c7a794c746edcea0896995d4461ec45a0122956d3f9e8b670f29c0acdba"
    end
    on_intel do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.6.2/crit-linux-amd64"
      sha256 "29c8d098f81ef18998c8fc8a69f402db5b28385a5ccd12e402555f5bb0597b8d"
    end
  end

  def install
    binary = Dir["crit-*"].first || "crit"
    bin.install binary => "crit"
  end

  test do
    assert_match "0.6.2", shell_output("#{bin}/crit --version").strip
  end
end
