class Crit < Formula
  desc "Browser-based markdown review tool with inline commenting"
  homepage "https://github.com/tomasz-tomczyk/crit"
  version "0.20.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.20.2/crit-darwin-arm64"
      sha256 "c9ced30d3b55ba236257e9d2805c8f4bd94abe07c31e20a2f5c299d139d3468e"
    end
    on_intel do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.20.2/crit-darwin-amd64"
      sha256 "aebb605892658dda92fb2c248c87466073932fe6bdb3fa93411058cefef0498c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.20.2/crit-linux-arm64"
      sha256 "833dd8145e5b47c06d88af80f8b6505159693742aadefcf400f923d7bc6c3b11"
    end
    on_intel do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.20.2/crit-linux-amd64"
      sha256 "d2907008164fada5bd5221ffd37ed125c181280cec3ed74465e526ea7d25d20a"
    end
  end

  def install
    binary = Dir["crit-*"].first || "crit"
    bin.install binary => "crit"
  end

  test do
    assert_match "0.20.2", shell_output("#{bin}/crit --version").strip
  end
end
