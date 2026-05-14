class Crit < Formula
  desc "Browser-based markdown review tool with inline commenting"
  homepage "https://github.com/tomasz-tomczyk/crit"
  version "0.13.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.13.1/crit-darwin-arm64"
      sha256 "f42395860513159841490e6b08c72b3d3eab6c130b3fa8fa472508c47cf1165f"
    end
    on_intel do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.13.1/crit-darwin-amd64"
      sha256 "767debd524ea0e29928c2382d3b5301c6558f685412de515388b0e83d107ef65"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.13.1/crit-linux-arm64"
      sha256 "e4bf7cb40aef8ac7b0541ff94454deb2c27caa6069ecbab6fe451202f0a539d8"
    end
    on_intel do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.13.1/crit-linux-amd64"
      sha256 "e028eaf7721737a276335dcbd370f251c2abdcdbb7150777d6ae5c2a1a9d9f41"
    end
  end

  def install
    binary = Dir["crit-*"].first || "crit"
    bin.install binary => "crit"
  end

  test do
    assert_match "0.13.1", shell_output("#{bin}/crit --version").strip
  end
end
