class Crit < Formula
  desc "Browser-based markdown review tool with inline commenting"
  homepage "https://github.com/tomasz-tomczyk/crit"
  version "0.15.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.15.1/crit-darwin-arm64"
      sha256 "a98fe7452dfee606a5c47c6196fd71180d34f26f97a8e0895a04bec5e172f3fe"
    end
    on_intel do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.15.1/crit-darwin-amd64"
      sha256 "a2faeb256863f20f1210965732b209f3d08d5f60e3d41c667fd932d582a9d6aa"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.15.1/crit-linux-arm64"
      sha256 "ecdf6c6bf86e25b885beaa6c5d762d95276f84bf80d82e25c19d2c4040ea7e42"
    end
    on_intel do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.15.1/crit-linux-amd64"
      sha256 "038673c05af12269c34206cd5c5c5f422ccc383949439586fe98dcf6051108c1"
    end
  end

  def install
    binary = Dir["crit-*"].first || "crit"
    bin.install binary => "crit"
  end

  test do
    assert_match "0.15.1", shell_output("#{bin}/crit --version").strip
  end
end
