class Crit < Formula
  desc "Browser-based markdown review tool with inline commenting"
  homepage "https://github.com/tomasz-tomczyk/crit"
  version "0.13.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.13.0/crit-darwin-arm64"
      sha256 "3c8e6c9ddba8b06f5ce1eec7aa463238c814e12256cfb5db9ddd1804d19d3e20"
    end
    on_intel do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.13.0/crit-darwin-amd64"
      sha256 "51884bfcb8225d93522835bfaf35881a9e9f8f3ff0c947961438f85ed2d13706"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.13.0/crit-linux-arm64"
      sha256 "fa86152d51b92361b0fa9824de999b6248c5827f88f33d0554bcc1b5fc753ecf"
    end
    on_intel do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.13.0/crit-linux-amd64"
      sha256 "cfc70d88ab3748f9b936141bc52335b02503494da70f65076a1346715cfb1723"
    end
  end

  def install
    binary = Dir["crit-*"].first || "crit"
    bin.install binary => "crit"
  end

  test do
    assert_match "0.13.0", shell_output("#{bin}/crit --version").strip
  end
end
