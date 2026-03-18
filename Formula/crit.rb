class Crit < Formula
  desc "Browser-based markdown review tool with inline commenting"
  homepage "https://github.com/tomasz-tomczyk/crit"
  version "0.5.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.5.2/crit-darwin-arm64"
      sha256 "cbdb0244c977e8c5eeb08f5c92e5cde0e25a02ab93a5b87ab0f41a87fab3484e"
    end
    on_intel do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.5.2/crit-darwin-amd64"
      sha256 "b4e2de7a308fe730fc400745692e117bd455e209b2139acda7f2217b8f6d5de3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.5.2/crit-linux-arm64"
      sha256 "66c7db2becf99bf14ad1b84ca522ebaae7021c8a8b1a6e3cfe88b937d4c48eb6"
    end
    on_intel do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.5.2/crit-linux-amd64"
      sha256 "6a184576ad5ae3503c8d51e7f49bbbced7c586f259f847a382df8a11d831b978"
    end
  end

  def install
    binary = Dir["crit-*"].first || "crit"
    bin.install binary => "crit"
  end

  test do
    assert_match "0.5.2", shell_output("#{bin}/crit --version").strip
  end
end
