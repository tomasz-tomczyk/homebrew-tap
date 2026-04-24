class Crit < Formula
  desc "Browser-based markdown review tool with inline commenting"
  homepage "https://github.com/tomasz-tomczyk/crit"
  version "0.10.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.10.0/crit-darwin-arm64"
      sha256 "3350081673c0dc6844bb0f17a7e3d0adb25ab07f37aade38ddcd6624eaef32ad"
    end
    on_intel do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.10.0/crit-darwin-amd64"
      sha256 "7a60a1281bb66d70e64c95fc0e5637e664066b1d40f03cd35b7019391055a6d8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.10.0/crit-linux-arm64"
      sha256 "92a5b5c9a5b2c9718b7e52b99f124306b5b4efc0ce46287d08a33660b94d0586"
    end
    on_intel do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.10.0/crit-linux-amd64"
      sha256 "c86c4a5b18298e1d139407bddf7adce7e9a6fcf2918559739d377d7ed23e12fc"
    end
  end

  def install
    binary = Dir["crit-*"].first || "crit"
    bin.install binary => "crit"
  end

  test do
    assert_match "0.10.0", shell_output("#{bin}/crit --version").strip
  end
end
