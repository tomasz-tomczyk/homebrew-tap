class Crit < Formula
  desc "Browser-based markdown review tool with inline commenting"
  homepage "https://github.com/tomasz-tomczyk/crit"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.1.2/crit-darwin-arm64"
      sha256 "961a7c7b6e2e091ccab53b900cfe9159c918e747336f78db09d9f9cb59aff22b"
    end
    on_intel do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.1.2/crit-darwin-amd64"
      sha256 "144d914eaca46c0cf872f7f664db40dede3365fecc73e8a7e63560add348a459"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.1.2/crit-linux-arm64"
      sha256 "1269d9b88cd212c4fb22428487cdf0c9bc465199ce7396f87a253ccc5fa06024"
    end
    on_intel do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.1.2/crit-linux-amd64"
      sha256 "09a829adec403d1c3f056c996ac21add897f678af6cec103675016c71cd1673b"
    end
  end

  def install
    binary = Dir["crit-*"].first || "crit"
    bin.install binary => "crit"
  end

  test do
    assert_match "0.1.2", shell_output("#{bin}/crit --version").strip
  end
end
