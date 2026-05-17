class Crit < Formula
  desc "Browser-based markdown review tool with inline commenting"
  homepage "https://github.com/tomasz-tomczyk/crit"
  version "0.15.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.15.0/crit-darwin-arm64"
      sha256 "da06c4925b6bdce5887b5286f5bc05858131d88bbcfe2693a4867d51e3466615"
    end
    on_intel do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.15.0/crit-darwin-amd64"
      sha256 "16766972a392a1d86cdbe81c04bb01634d68ff841b05462314d54bb607959057"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.15.0/crit-linux-arm64"
      sha256 "b960107bb7afbd1395b0ff192fc87392a6571fcf5b8dc05b1bb634a29985bb52"
    end
    on_intel do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.15.0/crit-linux-amd64"
      sha256 "e68d7310610ff67b3a2697f728964b9b583dad8487a4916f4f5e96dd566a13b0"
    end
  end

  def install
    binary = Dir["crit-*"].first || "crit"
    bin.install binary => "crit"
  end

  test do
    assert_match "0.15.0", shell_output("#{bin}/crit --version").strip
  end
end
