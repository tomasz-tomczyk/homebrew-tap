class Crit < Formula
  desc "Browser-based markdown review tool with inline commenting"
  homepage "https://github.com/tomasz-tomczyk/crit"
  version "0.9.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.9.2/crit-darwin-arm64"
      sha256 "00d367e009d78e2e7bee22dca22847fcb10930e8605e23d4e6e604a22a78b5a2"
    end
    on_intel do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.9.2/crit-darwin-amd64"
      sha256 "85c2c8902942d0efbe702aa6bb50397e0479df48a32ac77af9a71e9cdb1ab0c1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.9.2/crit-linux-arm64"
      sha256 "d9954f54dc55667330ca95b73d5cf0cc6a234dd10f3e0479badf5c9a3d1a9154"
    end
    on_intel do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.9.2/crit-linux-amd64"
      sha256 "281aa54bebf6f2d86769f4551949a20df7bab8e5c3ab79e4406588642a5801a2"
    end
  end

  def install
    binary = Dir["crit-*"].first || "crit"
    bin.install binary => "crit"
  end

  test do
    assert_match "0.9.2", shell_output("#{bin}/crit --version").strip
  end
end
