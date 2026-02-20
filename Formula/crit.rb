class Crit < Formula
  desc "Browser-based markdown review tool with inline commenting"
  homepage "https://github.com/tomasz-tomczyk/crit"
  version "0.3.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.3.2/crit-darwin-arm64"
      sha256 "fb9f7261468fb775f0163105ce0898926fb802f3a611e4719be2ee0d5a12a744"
    end
    on_intel do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.3.2/crit-darwin-amd64"
      sha256 "a7b29b03f4d0fae0b84249572be8a05372652329ddb6415240afb7a04154bd85"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.3.2/crit-linux-arm64"
      sha256 "ff86446329e27a5475eccd3444bd062ef3b13076691810ae8b10c8af2ca5b3e4"
    end
    on_intel do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.3.2/crit-linux-amd64"
      sha256 "c190b9554d17a9a254980de60f1337896b7d8345593866898c1dd04e46aba39e"
    end
  end

  def install
    binary = Dir["crit-*"].first || "crit"
    bin.install binary => "crit"
  end

  test do
    assert_match "0.3.2", shell_output("#{bin}/crit --version").strip
  end
end
