class Crit < Formula
  desc "Browser-based markdown review tool with inline commenting"
  homepage "https://github.com/tomasz-tomczyk/crit"
  version "0.21.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.21.0/crit-darwin-arm64"
      sha256 "0eb05b29d81230cf16168bb373e8d9a18eab5c60ae868ef6a92fee73df7dd90e"
    end
    on_intel do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.21.0/crit-darwin-amd64"
      sha256 "b3ded3bae8deb4997daaad7001eca9dce6be19e3e50d4e142a94bd3069708455"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.21.0/crit-linux-arm64"
      sha256 "ca21efb1ff5e7f24b09de7fa4d0b6e5b44e06418da4cbead04d132f0e1dd7cf4"
    end
    on_intel do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.21.0/crit-linux-amd64"
      sha256 "cfaaaa4aa291ef208739b48d1fa0ef2a33b1101c20794491153b50024d800c66"
    end
  end

  def install
    binary = Dir["crit-*"].first || "crit"
    bin.install binary => "crit"
  end

  test do
    assert_match "0.21.0", shell_output("#{bin}/crit --version").strip
  end
end
