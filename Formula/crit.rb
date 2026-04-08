class Crit < Formula
  desc "Browser-based markdown review tool with inline commenting"
  homepage "https://github.com/tomasz-tomczyk/crit"
  version "0.8.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.8.3/crit-darwin-arm64"
      sha256 "db5bbedd54a32037bd948229368a3f0d9a5b7f9b8d2f43e5cd2e598cbf494bbd"
    end
    on_intel do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.8.3/crit-darwin-amd64"
      sha256 "636a703f5392989e329fcd0ed3a96baab2afaff713b51c16c95cadf722394844"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.8.3/crit-linux-arm64"
      sha256 "b9c73385575aa80da6f70f531d1daa655a34163c428989cb6582f4ff54e815f9"
    end
    on_intel do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.8.3/crit-linux-amd64"
      sha256 "f0aa02ca80a683340b3773f513bcc73d1111c0988bfd027734492125e6352e3a"
    end
  end

  def install
    binary = Dir["crit-*"].first || "crit"
    bin.install binary => "crit"
  end

  test do
    assert_match "0.8.3", shell_output("#{bin}/crit --version").strip
  end
end
