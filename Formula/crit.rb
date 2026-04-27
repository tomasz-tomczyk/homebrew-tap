class Crit < Formula
  desc "Browser-based markdown review tool with inline commenting"
  homepage "https://github.com/tomasz-tomczyk/crit"
  version "0.10.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.10.1/crit-darwin-arm64"
      sha256 "2cf8701dce5e79b20618e2ad766d5f5bcd261dd60289bc5a186fa8ad0ef5b849"
    end
    on_intel do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.10.1/crit-darwin-amd64"
      sha256 "8a9bd8e5d101958542db74e7d994c720dd29778ab3ba89468a1780cfd5ab6a26"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.10.1/crit-linux-arm64"
      sha256 "7ccb624cb7d4d7254efdcf2cd5e2955c9fa14005ea0cdebea58f501fc462e40e"
    end
    on_intel do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.10.1/crit-linux-amd64"
      sha256 "5035ebaf7ee79af42c6587ab5592a4224692a2ccaddf0b1d6ef0905cfa9c9cff"
    end
  end

  def install
    binary = Dir["crit-*"].first || "crit"
    bin.install binary => "crit"
  end

  test do
    assert_match "0.10.1", shell_output("#{bin}/crit --version").strip
  end
end
