class Crit < Formula
  desc "Browser-based markdown review tool with inline commenting"
  homepage "https://github.com/tomasz-tomczyk/crit"
  version "0.4.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.4.6/crit-darwin-arm64"
      sha256 "02c57cd516e0094b1551440cc8153547ece1d19e7267155d4ed3a694a03cbd01"
    end
    on_intel do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.4.6/crit-darwin-amd64"
      sha256 "71bbdb30b731350f1ca5bd1ea6fe2b8c1a7fa6ba865003d4e031e229673df8c0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.4.6/crit-linux-arm64"
      sha256 "304c6aa7ea96d15184a9452f4e94e2fb70387e2fe35d473be87481feb8b1ddcd"
    end
    on_intel do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.4.6/crit-linux-amd64"
      sha256 "8bf0a81f6d5ab534d8b85ded58aaccad2607567290aba6adc1392edcdd6d3427"
    end
  end

  def install
    binary = Dir["crit-*"].first || "crit"
    bin.install binary => "crit"
  end

  test do
    assert_match "0.4.6", shell_output("#{bin}/crit --version").strip
  end
end
