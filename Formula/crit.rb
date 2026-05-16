class Crit < Formula
  desc "Browser-based markdown review tool with inline commenting"
  homepage "https://github.com/tomasz-tomczyk/crit"
  version "0.14.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.14.0/crit-darwin-arm64"
      sha256 "7b4c16f5048f171a318e4ec9bf43eb21de57c8f61c985760301bd1fd00353498"
    end
    on_intel do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.14.0/crit-darwin-amd64"
      sha256 "850b0f509d2496758d0f54ab415898d20459b9dc42344ae380deef2d7e495015"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.14.0/crit-linux-arm64"
      sha256 "1c6e93670dfc284ae5d42a259140bbbcc0ce8122b0d36b7ff99697e2c0bd411b"
    end
    on_intel do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.14.0/crit-linux-amd64"
      sha256 "48bb406ee20c5c7fcf609ef443792f08393aeed732c66a1290b9ca48599433db"
    end
  end

  def install
    binary = Dir["crit-*"].first || "crit"
    bin.install binary => "crit"
  end

  test do
    assert_match "0.14.0", shell_output("#{bin}/crit --version").strip
  end
end
