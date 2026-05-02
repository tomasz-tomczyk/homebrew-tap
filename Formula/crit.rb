class Crit < Formula
  desc "Browser-based markdown review tool with inline commenting"
  homepage "https://github.com/tomasz-tomczyk/crit"
  version "0.10.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.10.4/crit-darwin-arm64"
      sha256 "d82730d461f450cbd3bada7f0466d416d46f7af3a4a76c2bc32bd3e2d1176750"
    end
    on_intel do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.10.4/crit-darwin-amd64"
      sha256 "16a05087dcfb4cedc2d73fd70f41fa154ceca5dc088e0628b41a5c6352158195"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.10.4/crit-linux-arm64"
      sha256 "df9aba418d111a58f1a96aef7d08470eeff9622c15d5133ad9f5f8d6b571e6ab"
    end
    on_intel do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.10.4/crit-linux-amd64"
      sha256 "ac5e9f0ccac649a5042942bbfedcc217e351d6dc9feefa26cee2fecb1a7ae99d"
    end
  end

  def install
    binary = Dir["crit-*"].first || "crit"
    bin.install binary => "crit"
  end

  test do
    assert_match "0.10.4", shell_output("#{bin}/crit --version").strip
  end
end
